; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_set_info_rec_size.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_set_info_rec_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32, i32, i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog_info*)* @set_info_rec_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_info_rec_size(%struct.bpf_prog_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog_info*, align 8
  store %struct.bpf_prog_info* %0, %struct.bpf_prog_info** %3, align 8
  %4 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8, %1
  %14 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %13, %8
  %23 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %22
  %33 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %34 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %32, %27
  %42 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %48 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %41
  %52 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %53 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %51, %46
  %61 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %62 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  %63 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %64 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %63, i32 0, i32 1
  store i32 4, i32* %64, align 4
  %65 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %3, align 8
  %66 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %65, i32 0, i32 2
  store i32 4, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %57, %38, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
