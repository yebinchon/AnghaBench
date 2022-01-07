; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_debugfs.c_l2tp_dfs_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.l2tp_dfs_seq_data = type { i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"TUNNEL ID, peer ID from IP to IP\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" L2TPv2/L2TPv3, UDP/IP\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c" sessions session-count, refcnt refcnt/sk->refcnt\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c" debug tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  SESSION ID, peer ID, PWTYPE\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"   refcnt cnt\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"   offset OFFSET l2specific TYPE/LEN\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"   [ cookie ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"   [ peer cookie ]\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"   config mtu/mru/rcvseq/sendseq/dataseq/lns debug reorderto\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"   nr/ns tx-pkts/bytes/errs rx-pkts/bytes/errs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @l2tp_dfs_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_dfs_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2tp_dfs_seq_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.l2tp_dfs_seq_data*
  store %struct.l2tp_dfs_seq_data* %7, %struct.l2tp_dfs_seq_data** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = call i32 @seq_puts(%struct.seq_file* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %36 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %42 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @l2tp_dfs_seq_tunnel_show(%struct.seq_file* %40, i32 %43)
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.l2tp_dfs_seq_data*, %struct.l2tp_dfs_seq_data** %5, align 8
  %48 = getelementptr inbounds %struct.l2tp_dfs_seq_data, %struct.l2tp_dfs_seq_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @l2tp_dfs_seq_session_show(%struct.seq_file* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @l2tp_dfs_seq_tunnel_show(%struct.seq_file*, i32) #1

declare dso_local i32 @l2tp_dfs_seq_session_show(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
