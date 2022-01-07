; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_iterate_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_iterate_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }

@nf_conntrack_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.nf_conn*, i8*)*, i8*, i32, i32)* @nf_ct_iterate_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_iterate_cleanup(i32 (%struct.nf_conn*, i8*)* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32 (%struct.nf_conn*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  store i32 (%struct.nf_conn*, i8*)* %0, i32 (%struct.nf_conn*, i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 (...) @might_sleep()
  br label %13

13:                                               ; preds = %33, %4
  %14 = call i32 @read_seqcount_begin(i32* @nf_conntrack_generation)
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %20, %13
  %16 = load i32 (%struct.nf_conn*, i8*)*, i32 (%struct.nf_conn*, i8*)** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.nf_conn* @get_next_corpse(i32 (%struct.nf_conn*, i8*)* %16, i8* %17, i32* %9)
  store %struct.nf_conn* %18, %struct.nf_conn** %11, align 8
  %19 = icmp ne %struct.nf_conn* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nf_ct_delete(%struct.nf_conn* %21, i32 %22, i32 %23)
  %25 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %26 = call i32 @nf_ct_put(%struct.nf_conn* %25)
  %27 = call i32 (...) @cond_resched()
  br label %15

28:                                               ; preds = %15
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @read_seqcount_retry(i32* @nf_conntrack_generation, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %13

34:                                               ; preds = %32
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local %struct.nf_conn* @get_next_corpse(i32 (%struct.nf_conn*, i8*)*, i8*, i32*) #1

declare dso_local i32 @nf_ct_delete(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
