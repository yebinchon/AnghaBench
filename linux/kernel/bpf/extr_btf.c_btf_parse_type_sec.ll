; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_parse_type_sec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_parse_type_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btf_header }
%struct.btf_header = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Unaligned type_off\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"No type found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_verifier_env*)* @btf_parse_type_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_parse_type_sec(%struct.btf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca %struct.btf_header*, align 8
  %5 = alloca i32, align 4
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  %6 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %7 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.btf_header* %9, %struct.btf_header** %4, align 8
  %10 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %11 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %18 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.btf_header*, %struct.btf_header** %4, align 8
  %23 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %28 = call i32 @btf_verifier_log(%struct.btf_verifier_env* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %33 = call i32 @btf_check_all_metas(%struct.btf_verifier_env* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %40 = call i32 @btf_check_all_types(%struct.btf_verifier_env* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %36, %26, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @btf_verifier_log(%struct.btf_verifier_env*, i8*) #1

declare dso_local i32 @btf_check_all_metas(%struct.btf_verifier_env*) #1

declare dso_local i32 @btf_check_all_types(%struct.btf_verifier_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
