; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_preparsed_payload = type { i64, i32 }
%struct.encrypted_key_payload = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*)* @encrypted_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypted_instantiate(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_preparsed_payload*, align 8
  %6 = alloca %struct.encrypted_key_payload*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %5, align 8
  store %struct.encrypted_key_payload* null, %struct.encrypted_key_payload** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %15 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ule i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %12, align 8
  %21 = icmp ugt i64 %20, 32767
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %24 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %19, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load i64, i64* %12, align 8
  %32 = add i64 %31, 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i64 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %96

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %46 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i8* %44, i32 %47, i64 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @datablob_parse(i8* %50, i8** %8, i8** %9, i8** %10, i8** %11)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %92

55:                                               ; preds = %40
  %56 = load %struct.key*, %struct.key** %4, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @encrypted_key_alloc(%struct.key* %56, i8* %57, i8* %58, i8* %59)
  %61 = bitcast i8* %60 to %struct.encrypted_key_payload*
  store %struct.encrypted_key_payload* %61, %struct.encrypted_key_payload** %6, align 8
  %62 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %63 = bitcast %struct.encrypted_key_payload* %62 to i8*
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %68 = bitcast %struct.encrypted_key_payload* %67 to i8*
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %13, align 4
  br label %92

70:                                               ; preds = %55
  %71 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %72 = bitcast %struct.encrypted_key_payload* %71 to i8*
  %73 = load %struct.key*, %struct.key** %4, align 8
  %74 = getelementptr inbounds %struct.key, %struct.key* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @encrypted_init(i8* %72, i32 %75, i8* %76, i8* %77, i8* %78, i8* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %85 = bitcast %struct.encrypted_key_payload* %84 to i8*
  %86 = call i32 @kzfree(i8* %85)
  br label %92

87:                                               ; preds = %70
  %88 = load %struct.key*, %struct.key** %4, align 8
  %89 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %90 = bitcast %struct.encrypted_key_payload* %89 to i8*
  %91 = call i32 @rcu_assign_keypointer(%struct.key* %88, i8* %90)
  br label %92

92:                                               ; preds = %87, %83, %66, %54
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @kzfree(i8* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %37, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @datablob_parse(i8*, i8**, i8**, i8**, i8**) #1

declare dso_local i8* @encrypted_key_alloc(%struct.key*, i8*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @encrypted_init(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @kzfree(i8*) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
