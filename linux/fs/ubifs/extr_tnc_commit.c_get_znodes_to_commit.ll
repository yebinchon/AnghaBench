; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_get_znodes_to_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_get_znodes_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_znode*, %struct.ubifs_znode*, %struct.TYPE_2__ }
%struct.ubifs_znode = type { %struct.ubifs_znode*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no znodes to commit\00", align 1
@COW_ZNODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"committing %d znodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @get_znodes_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_znodes_to_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ubifs_znode* @find_first_dirty(i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 1
  store %struct.ubifs_znode* %11, %struct.ubifs_znode** %13, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %15, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 2
  store %struct.ubifs_znode* %16, %struct.ubifs_znode** %18, align 8
  store %struct.ubifs_znode* %16, %struct.ubifs_znode** %4, align 8
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %20 = icmp ne %struct.ubifs_znode* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @dbg_cmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %50
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %29 = call i32 @ubifs_zn_cow(%struct.ubifs_znode* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %32)
  %34 = load i32, i32* @COW_ZNODE, align 4
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %35, i32 0, i32 6
  %37 = call i32 @__set_bit(i32 %34, i32* %36)
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %41 = call %struct.ubifs_znode* @find_next_dirty(%struct.ubifs_znode* %40)
  store %struct.ubifs_znode* %41, %struct.ubifs_znode** %5, align 8
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %43 = icmp ne %struct.ubifs_znode* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load %struct.ubifs_znode*, %struct.ubifs_znode** %46, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 0
  store %struct.ubifs_znode* %47, %struct.ubifs_znode** %49, align 8
  br label %67

50:                                               ; preds = %26
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %55 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %62, i32 0, i32 0
  store %struct.ubifs_znode* %61, %struct.ubifs_znode** %63, align 8
  %64 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  store %struct.ubifs_znode* %64, %struct.ubifs_znode** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %26

67:                                               ; preds = %44
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, ...) @dbg_cmt(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 0
  %74 = call i32 @atomic_long_read(i32* %73)
  %75 = icmp eq i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ubifs_assert(%struct.ubifs_info* %70, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %21
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.ubifs_znode* @find_first_dirty(i32) #1

declare dso_local i32 @dbg_cmt(i8*, ...) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_zn_cow(%struct.ubifs_znode*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.ubifs_znode* @find_next_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
