; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_de_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_de_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"[offset=%d dir_id=%d objectid=%d location=%d state=%04x]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.reiserfs_de_head*)* @scnprintf_de_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scnprintf_de_head(i8* %0, i64 %1, %struct.reiserfs_de_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.reiserfs_de_head*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.reiserfs_de_head* %2, %struct.reiserfs_de_head** %7, align 8
  %8 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %9 = icmp ne %struct.reiserfs_de_head* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %14 = call i32 @deh_offset(%struct.reiserfs_de_head* %13)
  %15 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %16 = call i32 @deh_dir_id(%struct.reiserfs_de_head* %15)
  %17 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %18 = call i32 @deh_objectid(%struct.reiserfs_de_head* %17)
  %19 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %20 = call i32 @deh_location(%struct.reiserfs_de_head* %19)
  %21 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %7, align 8
  %22 = call i32 @deh_state(%struct.reiserfs_de_head* %21)
  %23 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_dir_id(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_objectid(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_state(%struct.reiserfs_de_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
