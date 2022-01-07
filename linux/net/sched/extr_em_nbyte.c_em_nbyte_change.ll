; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_nbyte.c_em_nbyte_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_nbyte.c_em_nbyte_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.tcf_em_nbyte = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_nbyte_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_nbyte_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_ematch*, align 8
  %10 = alloca %struct.tcf_em_nbyte*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.tcf_em_nbyte*
  store %struct.tcf_em_nbyte* %12, %struct.tcf_em_nbyte** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.tcf_em_nbyte*, %struct.tcf_em_nbyte** %10, align 8
  %20 = getelementptr inbounds %struct.tcf_em_nbyte, %struct.tcf_em_nbyte* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 4, %22
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %16
  %29 = load %struct.tcf_em_nbyte*, %struct.tcf_em_nbyte** %10, align 8
  %30 = getelementptr inbounds %struct.tcf_em_nbyte, %struct.tcf_em_nbyte* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %36 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %39 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i64 @kmemdup(i8* %37, i32 %40, i32 %41)
  %43 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %44 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %46 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49, %25
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
