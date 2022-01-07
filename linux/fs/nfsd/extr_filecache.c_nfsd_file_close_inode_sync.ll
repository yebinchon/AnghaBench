; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_close_inode_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_close_inode_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@NFSD_FILE_HASH_BITS = common dso_local global i32 0, align 4
@dispose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_file_close_inode_sync(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NFSD_FILE_HASH_BITS, align 4
  %8 = call i64 @hash_long(i32 %6, i32 %7)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @dispose, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @__nfsd_file_close_inode(%struct.inode* %12, i32 %13, i32* @dispose)
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @list_empty(i32* @dispose)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @trace_nfsd_file_close_inode_sync(%struct.inode* %15, i32 %16, i32 %20)
  %22 = call i32 @nfsd_file_dispose_list_sync(i32* @dispose)
  ret void
}

declare dso_local i64 @hash_long(i32, i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @__nfsd_file_close_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @trace_nfsd_file_close_inode_sync(%struct.inode*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @nfsd_file_dispose_list_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
