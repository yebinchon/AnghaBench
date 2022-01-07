; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_next_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_next_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_dfs_seq_data = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_dfs_seq_data*)* @l2tp_dfs_next_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_dfs_next_session(%struct.l2tp_dfs_seq_data* %0) #0 {
  %2 = alloca %struct.l2tp_dfs_seq_data*, align 8
  store %struct.l2tp_dfs_seq_data* %0, %struct.l2tp_dfs_seq_data** %2, align 8
  %3 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %4 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %9 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @l2tp_session_dec_refcount(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %14 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %17 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32* @l2tp_session_get_nth(i32 %15, i64 %18)
  %20 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %21 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %23 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %27 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %12
  %31 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %32 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %2, align 8
  %34 = call i32 @l2tp_dfs_next_tunnel(%struct.l2tp_dfs_seq_data* %33)
  br label %35

35:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @l2tp_session_dec_refcount(i32*) #1

declare dso_local i32* @l2tp_session_get_nth(i32, i64) #1

declare dso_local i32 @l2tp_dfs_next_tunnel(%struct.l2tp_dfs_seq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
