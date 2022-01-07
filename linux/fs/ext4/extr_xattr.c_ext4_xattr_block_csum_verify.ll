; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_header = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ext4_xattr_block_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_csum_verify(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ext4_xattr_header*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = call %struct.ext4_xattr_header* @BHDR(%struct.buffer_head* %7)
  store %struct.ext4_xattr_header* %8, %struct.ext4_xattr_header** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ext4_has_metadata_csum(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = call i32 @lock_buffer(%struct.buffer_head* %15)
  %17 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %5, align 8
  %18 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %5, align 8
  %25 = call i64 @ext4_xattr_block_csum(%struct.inode* %20, i32 %23, %struct.ext4_xattr_header* %24)
  %26 = icmp eq i64 %19, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call i32 @unlock_buffer(%struct.buffer_head* %28)
  br label %30

30:                                               ; preds = %14, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.ext4_xattr_header* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @ext4_has_metadata_csum(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @ext4_xattr_block_csum(%struct.inode*, i32, %struct.ext4_xattr_header*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
