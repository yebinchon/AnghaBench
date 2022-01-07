; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_buf_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_buf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_log_buf = type { i64, i64* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@emergency = common dso_local global %struct.nf_log_buf zeroinitializer, align 8
@emergency_ptr = common dso_local global %struct.nf_log_buf* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_log_buf_close(%struct.nf_log_buf* %0) #0 {
  %2 = alloca %struct.nf_log_buf*, align 8
  store %struct.nf_log_buf* %0, %struct.nf_log_buf** %2, align 8
  %3 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  %4 = getelementptr inbounds %struct.nf_log_buf, %struct.nf_log_buf* %3, i32 0, i32 1
  %5 = load i64*, i64** %4, align 8
  %6 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  %7 = getelementptr inbounds %struct.nf_log_buf, %struct.nf_log_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  %11 = getelementptr inbounds %struct.nf_log_buf, %struct.nf_log_buf* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %12)
  %14 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  %15 = icmp ne %struct.nf_log_buf* %14, @emergency
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  %21 = call i32 @kfree(%struct.nf_log_buf* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.nf_log_buf*, %struct.nf_log_buf** %2, align 8
  store %struct.nf_log_buf* %23, %struct.nf_log_buf** @emergency_ptr, align 8
  %24 = call i32 (...) @local_bh_enable()
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @printk(i8*, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree(%struct.nf_log_buf*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
