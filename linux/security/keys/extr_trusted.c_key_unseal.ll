; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_key_unseal.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_key_unseal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trusted_key_payload = type { i64, i32*, i32, i32, i32 }
%struct.trusted_key_options = type { i32, i32, i32 }
%struct.tpm_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"trusted_key: srkunseal failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trusted_key_payload*, %struct.trusted_key_options*)* @key_unseal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_unseal(%struct.trusted_key_payload* %0, %struct.trusted_key_options* %1) #0 {
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
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.tpm_buf*, %struct.tpm_buf** %6, align 8
  %17 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %18 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %21 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %24 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %27 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.trusted_key_options*, %struct.trusted_key_options** %5, align 8
  %30 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %33 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %36 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %35, i32 0, i32 0
  %37 = call i32 @tpm_unseal(%struct.tpm_buf* %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32* %34, i64* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %15
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %55

43:                                               ; preds = %15
  %44 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %45 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %48 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %54 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %43, %40
  %56 = load %struct.tpm_buf*, %struct.tpm_buf** %6, align 8
  %57 = call i32 @kzfree(%struct.tpm_buf* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.tpm_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @tpm_unseal(%struct.tpm_buf*, i32, i32, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @kzfree(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
