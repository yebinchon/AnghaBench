; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_decode_nlm_testrply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_decode_nlm_testrply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nlm_res = type { i64 }

@nlm_lck_denied = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nlm_res*)* @decode_nlm_testrply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nlm_testrply(%struct.xdr_stream* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nlm_res*, align 8
  %5 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %8 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %7, i32 0, i32 0
  %9 = call i32 @decode_nlm_stat(%struct.xdr_stream* %6, i64* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @nlm_lck_denied, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %22 = load %struct.nlm_res*, %struct.nlm_res** %4, align 8
  %23 = call i32 @decode_nlm_holder(%struct.xdr_stream* %21, %struct.nlm_res* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @decode_nlm_stat(%struct.xdr_stream*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_nlm_holder(%struct.xdr_stream*, %struct.nlm_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
