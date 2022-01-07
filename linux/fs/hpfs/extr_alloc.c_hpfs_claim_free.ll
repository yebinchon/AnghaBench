; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_claim_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_claim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"free count overflow, freeing sector %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @hpfs_claim_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_claim_free(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %6)
  store %struct.hpfs_sb_info* %7, %struct.hpfs_sb_info** %5, align 8
  %8 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @hpfs_error(%struct.super_block* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %34

29:                                               ; preds = %12
  %30 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %5, align 8
  %31 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %23, %29, %2
  ret void
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
