; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpage_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpage_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*)* @ocfs2_readpage_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_readpage_inline(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @ocfs2_read_inode_block(%struct.inode* %23, %struct.buffer_head** %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %34 = call i32 @ocfs2_read_inline_data(%struct.inode* %31, %struct.page* %32, %struct.buffer_head* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @unlock_page(%struct.page* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = call i32 @brelse(%struct.buffer_head* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_inline_data(%struct.inode*, %struct.page*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
