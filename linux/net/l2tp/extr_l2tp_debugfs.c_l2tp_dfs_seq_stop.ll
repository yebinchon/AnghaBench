; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_seq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_seq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_dfs_seq_data = type { i32*, i32* }
%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global %struct.l2tp_dfs_seq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @l2tp_dfs_seq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_dfs_seq_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2tp_dfs_seq_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.l2tp_dfs_seq_data*
  store %struct.l2tp_dfs_seq_data* %7, %struct.l2tp_dfs_seq_data** %5, align 8
  %8 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %9 = icmp ne %struct.l2tp_dfs_seq_data* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %12 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** @SEQ_START_TOKEN, align 8
  %13 = icmp eq %struct.l2tp_dfs_seq_data* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  br label %39

15:                                               ; preds = %10
  %16 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %17 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %22 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @l2tp_session_dec_refcount(i32* %23)
  %25 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %26 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %29 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %34 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @l2tp_tunnel_dec_refcount(i32* %35)
  %37 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %38 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %14, %32, %27
  ret void
}

declare dso_local i32 @l2tp_session_dec_refcount(i32*) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
