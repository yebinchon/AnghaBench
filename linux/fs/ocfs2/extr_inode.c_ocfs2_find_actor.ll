; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_find_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_find_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_find_inode_args = type { i64 }
%struct.ocfs2_inode_info = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"No inode in find actor!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ocfs2_find_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_actor(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.ocfs2_find_inode_args* null, %struct.ocfs2_find_inode_args** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %8)
  store %struct.ocfs2_inode_info* %9, %struct.ocfs2_inode_info** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ocfs2_find_inode_args*
  store %struct.ocfs2_find_inode_args* %11, %struct.ocfs2_find_inode_args** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = icmp ne %struct.inode* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @mlog_bug_on_msg(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @trace_ocfs2_find_actor(%struct.inode* %17, i32 %20, i8* %21, i64 %24)
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %35

34:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*) #1

declare dso_local i32 @trace_ocfs2_find_actor(%struct.inode*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
