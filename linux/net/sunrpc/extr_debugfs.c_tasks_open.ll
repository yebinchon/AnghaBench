; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_debugfs.c_tasks_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_debugfs.c_tasks_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.rpc_clnt* }

@tasks_seq_operations = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tasks_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tasks_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.rpc_clnt*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @seq_open(%struct.file* %8, i32* @tasks_seq_operations)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.seq_file*, %struct.seq_file** %14, align 8
  store %struct.seq_file* %15, %struct.seq_file** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %17, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 0
  store %struct.rpc_clnt* %18, %struct.rpc_clnt** %20, align 8
  store %struct.rpc_clnt* %18, %struct.rpc_clnt** %7, align 8
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %22 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc_not_zero(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = call i32 @seq_release(%struct.inode* %26, %struct.file* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %12
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
