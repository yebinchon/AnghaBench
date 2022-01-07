; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_check_last_writer.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_check_last_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32, i32, i64, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@IMA_UPDATE_XATTR = common dso_local global i32 0, align 4
@IMA_NEW_FILE = common dso_local global i32 0, align 4
@IMA_DONE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.integrity_iint_cache*, %struct.inode*, %struct.file*)* @ima_check_last_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_check_last_writer(%struct.integrity_iint_cache* %0, %struct.inode* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.integrity_iint_cache*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.integrity_iint_cache* %0, %struct.integrity_iint_cache** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FMODE_WRITE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %70

17:                                               ; preds = %3
  %18 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %19 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %66

25:                                               ; preds = %17
  %26 = load i32, i32* @IMA_UPDATE_XATTR, align 4
  %27 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %28 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %27, i32 0, i32 4
  %29 = call i32 @test_and_clear_bit(i32 %26, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @IS_I_VERSION(%struct.inode* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %36 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @inode_eq_iversion(%struct.inode* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %42 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IMA_NEW_FILE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %40, %33, %25
  %48 = load i32, i32* @IMA_DONE_MASK, align 4
  %49 = load i32, i32* @IMA_NEW_FILE, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %53 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %57 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = call i32 @ima_update_xattr(%struct.integrity_iint_cache* %61, %struct.file* %62)
  br label %64

64:                                               ; preds = %60, %47
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %17
  %67 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %68 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %16
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IS_I_VERSION(%struct.inode*) #1

declare dso_local i32 @inode_eq_iversion(%struct.inode*, i32) #1

declare dso_local i32 @ima_update_xattr(%struct.integrity_iint_cache*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
