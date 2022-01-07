; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_free_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_free_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dinode = type { i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_free_dinode(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_dinode* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_dinode* %3, %struct.ocfs2_dinode** %8, align 8
  %12 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %13 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @le64_to_cpu(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ocfs2_which_suballoc_group(i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @le64_to_cpu(i64 %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ocfs2_free_suballoc_bits(i32* %33, %struct.inode* %34, %struct.buffer_head* %35, i32 %36, i32 %37, i32 1)
  ret i32 %38
}

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
