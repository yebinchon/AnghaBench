; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___set_data_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___set_data_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32, i32 }
%struct.f2fs_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dnode_of_data*)* @__set_data_blkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_data_blkaddr(%struct.dnode_of_data* %0) #0 {
  %2 = alloca %struct.dnode_of_data*, align 8
  %3 = alloca %struct.f2fs_node*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %2, align 8
  %6 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %7 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.f2fs_node* @F2FS_NODE(i32 %8)
  store %struct.f2fs_node* %9, %struct.f2fs_node** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %11 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_INODE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %17 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @f2fs_has_extra_attr(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %23 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_extra_isize(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %15, %1
  %27 = load %struct.f2fs_node*, %struct.f2fs_node** %3, align 8
  %28 = call i32* @blkaddr_in_node(%struct.f2fs_node* %27)
  store i32* %28, i32** %4, align 8
  %29 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %30 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.dnode_of_data*, %struct.dnode_of_data** %2, align 8
  %36 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  store i32 %32, i32* %40, align 4
  ret void
}

declare dso_local %struct.f2fs_node* @F2FS_NODE(i32) #1

declare dso_local i64 @IS_INODE(i32) #1

declare dso_local i64 @f2fs_has_extra_attr(i32) #1

declare dso_local i32 @get_extra_isize(i32) #1

declare dso_local i32* @blkaddr_in_node(%struct.f2fs_node*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
