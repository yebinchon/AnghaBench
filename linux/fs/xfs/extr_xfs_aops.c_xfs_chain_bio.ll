; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_chain_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_chain_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*)* @xfs_chain_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @xfs_chain_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = load i32, i32* @BIO_MAX_PAGES, align 4
  %6 = call %struct.bio* @bio_alloc(i32 %4, i32 %5)
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = call i32 @bio_copy_dev(%struct.bio* %7, %struct.bio* %8)
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = call i32 @bio_end_sector(%struct.bio* %10)
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = call i32 @bio_chain(%struct.bio* %25, %struct.bio* %26)
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = call i32 @bio_get(%struct.bio* %28)
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = call i32 @submit_bio(%struct.bio* %30)
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %32
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_copy_dev(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
