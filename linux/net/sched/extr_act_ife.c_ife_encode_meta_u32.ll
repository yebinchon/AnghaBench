; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_encode_meta_u32.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_encode_meta_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_info = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ife_encode_meta_u32(i64 %0, i8* %1, %struct.tcf_meta_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcf_meta_info*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tcf_meta_info* %2, %struct.tcf_meta_info** %7, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %11 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %16 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %38

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @htonl(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.tcf_meta_info*, %struct.tcf_meta_info** %7, align 8
  %35 = getelementptr inbounds %struct.tcf_meta_info, %struct.tcf_meta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ife_tlv_meta_encode(i8* %33, i32 %36, i32 4, i64* %8)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @ife_tlv_meta_encode(i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
