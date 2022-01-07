; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_dh.c_dh_data_from_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_dh.c_dh_data_from_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32* }
%struct.user_key_payload = type { i32, i32 }

@KEY_NEED_READ = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@key_type_user = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @dh_data_from_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_data_from_key(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.user_key_payload*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @KEY_NEED_READ, align 4
  %13 = call i32 @lookup_user_key(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOKEY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.key* @key_ref_to_ptr(i32 %21)
  store %struct.key* %22, %struct.key** %5, align 8
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.key*, %struct.key** %5, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, @key_type_user
  br i1 %28, label %29, label %65

29:                                               ; preds = %20
  %30 = load %struct.key*, %struct.key** %5, align 8
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 0
  %32 = call i32 @down_read(i32* %31)
  %33 = load %struct.key*, %struct.key** %5, align 8
  %34 = call i64 @key_validate(%struct.key* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.key*, %struct.key** %5, align 8
  %39 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %38)
  store %struct.user_key_payload* %39, %struct.user_key_payload** %9, align 8
  %40 = load %struct.user_key_payload*, %struct.user_key_payload** %9, align 8
  %41 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.user_key_payload*, %struct.user_key_payload** %9, align 8
  %44 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kmemdup(i32 %42, i32 %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load i32*, i32** %10, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i8**, i8*** %4, align 8
  store i8* %52, i8** %53, align 8
  %54 = load %struct.user_key_payload*, %struct.user_key_payload** %9, align 8
  %55 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %37
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.key*, %struct.key** %5, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  br label %65

65:                                               ; preds = %61, %20
  %66 = load %struct.key*, %struct.key** %5, align 8
  %67 = call i32 @key_put(%struct.key* %66)
  br label %68

68:                                               ; preds = %65, %17
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @key_validate(%struct.key*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
