; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_encode_meta_u16.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_encode_meta_u16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ife_encode_meta_u16(i64 %0, i8* %1, %struct.tcf_meta_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcf_meta_info*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tcf_meta_info* %2, %struct.tcf_meta_info** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %10 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %15 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @htons(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %34 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ife_tlv_meta_encode(i8* %32, i32 %35, i32 2, i64* %8)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @ife_tlv_meta_encode(i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
