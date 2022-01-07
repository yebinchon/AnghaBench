; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_key_seal.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_key_seal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trusted_key_payload = type { i64, i32, i32, i32*, i32 }
%struct.trusted_key_options = type { i32, i32, i32, i32, i32, i32 }
%struct.tpm_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"trusted_key: srkseal failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trusted_key_payload*, %struct.trusted_key_options*)* @key_seal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_seal(%struct.trusted_key_payload* %0, %struct.trusted_key_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trusted_key_payload*, align 8
  %5 = alloca %struct.trusted_key_options*, align 8
  %6 = alloca %struct.tpm_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.trusted_key_payload* %0, %struct.trusted_key_payload** %4, align 8
  store %struct.trusted_key_options* %1, %struct.trusted_key_options** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tpm_buf* @kzalloc(i32 4, i32 %8)
  store %struct.tpm_buf* %9, %struct.tpm_buf** %6, align 8
  %10 = load %struct.tpm_buf*, %struct.tpm_buf** %6, align 8
  %11 = icmp ne %struct.tpm_buf* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %17 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %20 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %23 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.tpm_buf*, %struct.tpm_buf** %6, align 8
  %27 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %28 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %31 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %34 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %37 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %40 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  %43 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %44 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %47 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %46, i32 0, i32 1
  %48 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %49 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %52 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %55 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tpm_seal(%struct.tpm_buf* %26, i32 %29, i32 %32, i32 %35, i32* %38, i64 %42, i32 %45, i32* %47, i32 %50, i32 %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %15
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %15
  %64 = load %struct.tpm_buf*, %struct.tpm_buf** %6, align 8
  %65 = call i32 @kzfree(%struct.tpm_buf* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.tpm_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @tpm_seal(%struct.tpm_buf*, i32, i32, i32, i32*, i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @kzfree(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
