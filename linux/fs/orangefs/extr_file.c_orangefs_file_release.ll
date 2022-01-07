; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@GOSSIP_FILE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"orangefs_file_release: called on %pD\0A\00", align 1
@orangefs_features = common dso_local global i32 0, align 4
@ORANGEFS_FEATURE_READAHEAD = common dso_local global i32 0, align 4
@GOSSIP_INODE_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"calling flush_racache on %pU\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"flush_racache finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @orangefs_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load i32, i32* @GOSSIP_FILE_DEBUG, align 4
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = call i32 (i32, i8*, ...) @gossip_debug(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.file* %6)
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.TYPE_2__* @file_inode(%struct.file* %8)
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.TYPE_2__* @file_inode(%struct.file* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call %struct.TYPE_2__* @file_inode(%struct.file* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @mapping_nrpages(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i32, i32* @orangefs_features, align 4
  %25 = load i32, i32* @ORANGEFS_FEATURE_READAHEAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @get_khandle_from_ino(%struct.inode* %30)
  %32 = call i32 (i32, i8*, ...) @gossip_debug(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @flush_racache(%struct.inode* %33)
  %35 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @gossip_debug(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %28, %23
  br label %38

38:                                               ; preds = %37, %17, %11, %2
  ret i32 0
}

declare dso_local i32 @gossip_debug(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i64 @mapping_nrpages(i32*) #1

declare dso_local i32 @get_khandle_from_ino(%struct.inode*) #1

declare dso_local i32 @flush_racache(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
