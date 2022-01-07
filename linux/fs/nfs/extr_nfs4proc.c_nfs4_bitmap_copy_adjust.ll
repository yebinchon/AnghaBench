; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_bitmap_copy_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_bitmap_copy_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFS4_BITMASK_SZ = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i64 0, align 8
@NFS_INO_INVALID_CHANGE = common dso_local global i64 0, align 8
@NFS_INO_INVALID_SIZE = common dso_local global i64 0, align 8
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.inode*)* @nfs4_bitmap_copy_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_bitmap_copy_adjust(i32* %0, i32* %1, %struct.inode* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @NFS4_BITMASK_SZ, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memcpy(i32* %8, i32* %9, i32 %13)
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load i32, i32* @FMODE_READ, align 4
  %20 = call i32 @nfs4_have_delegation(%struct.inode* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %64

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @READ_ONCE(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @NFS_INO_REVAL_FORCED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = load i64, i64* @NFS_INO_INVALID_CHANGE, align 8
  %35 = load i64, i64* @NFS_INO_INVALID_SIZE, align 8
  %36 = or i64 %34, %35
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %33, %23
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @NFS_INO_INVALID_SIZE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @NFS_INO_INVALID_CHANGE, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @FATTR4_WORD0_CHANGE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %22, %57, %52
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_have_delegation(%struct.inode*, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
