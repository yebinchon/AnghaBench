; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_find_good_pkt_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_find_good_pkt_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state = type { i32, i32* }
%struct.bpf_reg_state = type { i64, i64 }

@MAX_PACKET_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_state*, %struct.bpf_reg_state*, i32, i32)* @find_good_pkt_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_good_pkt_pointers(%struct.bpf_verifier_state* %0, %struct.bpf_reg_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_state* %0, %struct.bpf_verifier_state** %5, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  br label %72

24:                                               ; preds = %20, %15
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_PACKET_OFF, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %35 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i64, i64* @MAX_PACKET_OFF, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30, %24
  br label %72

41:                                               ; preds = %30
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %41
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %59 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @__find_good_pkt_pointers(i32 %64, %struct.bpf_reg_state* %65, i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %51

72:                                               ; preds = %23, %40, %51
  ret void
}

declare dso_local i32 @__find_good_pkt_pointers(i32, %struct.bpf_reg_state*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
