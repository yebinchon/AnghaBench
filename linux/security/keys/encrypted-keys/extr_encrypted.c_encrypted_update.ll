; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.encrypted_key_payload** }
%struct.encrypted_key_payload = type { i8*, i8*, i64, i32, i32, i32, i32 }
%struct.key_preparsed_payload = type { i64, i8* }

@ENOKEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ivsize = common dso_local global i64 0, align 8
@encrypted_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*)* @encrypted_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypted_update(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_preparsed_payload*, align 8
  %6 = alloca %struct.encrypted_key_payload*, align 8
  %7 = alloca %struct.encrypted_key_payload*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %5, align 8
  %13 = load %struct.key*, %struct.key** %4, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.encrypted_key_payload**, %struct.encrypted_key_payload*** %15, align 8
  %17 = getelementptr inbounds %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %16, i64 0
  %18 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %17, align 8
  store %struct.encrypted_key_payload* %18, %struct.encrypted_key_payload** %6, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %19 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %20 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.key*, %struct.key** %4, align 8
  %23 = call i64 @key_is_negative(%struct.key* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOKEY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %131

28:                                               ; preds = %2
  %29 = load i64, i64* %11, align 8
  %30 = icmp ule i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = icmp ugt i64 %32, 32767
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %36 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %31, %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %131

42:                                               ; preds = %34
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i64 %44, i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %131

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %58 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @memcpy(i8* %56, i8* %59, i64 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @datablob_parse(i8* %62, i8** %10, i8** %9, i32* null, i32* null)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %127

67:                                               ; preds = %52
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %70 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @valid_master_desc(i8* %68, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %127

76:                                               ; preds = %67
  %77 = load %struct.key*, %struct.key** %4, align 8
  %78 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %79 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %83 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.encrypted_key_payload* @encrypted_key_alloc(%struct.key* %77, i32 %80, i8* %81, i32 %84)
  store %struct.encrypted_key_payload* %85, %struct.encrypted_key_payload** %7, align 8
  %86 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %87 = call i64 @IS_ERR(%struct.encrypted_key_payload* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %91 = call i32 @PTR_ERR(%struct.encrypted_key_payload* %90)
  store i32 %91, i32* %12, align 4
  br label %127

92:                                               ; preds = %76
  %93 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %94 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %95 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %99 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__ekey_init(%struct.encrypted_key_payload* %93, i32 %96, i8* %97, i32 %100)
  %102 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %103 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %106 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* @ivsize, align 8
  %109 = call i32 @memcpy(i8* %104, i8* %107, i64 %108)
  %110 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %111 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %114 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %117 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @memcpy(i8* %112, i8* %115, i64 %118)
  %120 = load %struct.key*, %struct.key** %4, align 8
  %121 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %122 = call i32 @rcu_assign_keypointer(%struct.key* %120, %struct.encrypted_key_payload* %121)
  %123 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %6, align 8
  %124 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %123, i32 0, i32 3
  %125 = load i32, i32* @encrypted_rcu_free, align 4
  %126 = call i32 @call_rcu(i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %92, %89, %75, %66
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @kzfree(i8* %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %49, %39, %25
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @key_is_negative(%struct.key*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @datablob_parse(i8*, i8**, i8**, i32*, i32*) #1

declare dso_local i32 @valid_master_desc(i8*, i32) #1

declare dso_local %struct.encrypted_key_payload* @encrypted_key_alloc(%struct.key*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.encrypted_key_payload*) #1

declare dso_local i32 @PTR_ERR(%struct.encrypted_key_payload*) #1

declare dso_local i32 @__ekey_init(%struct.encrypted_key_payload*, i32, i8*, i32) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, %struct.encrypted_key_payload*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @kzfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
