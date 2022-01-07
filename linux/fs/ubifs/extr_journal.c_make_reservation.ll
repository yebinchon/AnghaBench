; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_make_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_make_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no space, retry\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"stuck in space allocation\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"too many space allocation re-tries (%d)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"-EAGAIN, commit and retry (retried %d times)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"cannot reserve %d bytes in jhead %d, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @make_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_reservation(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %72, %3
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @reserve_space(%struct.ubifs_info* %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %101

22:                                               ; preds = %11
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = call i32 @up_read(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %31, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %73

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 128
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %73

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ubifs_warn(%struct.ubifs_info* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %67 = call i32 @ubifs_run_commit(%struct.ubifs_info* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %101

72:                                               ; preds = %61
  br label %11

73:                                               ; preds = %48, %44
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %73
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 0
  %86 = call i32 @down_write(i32* %85)
  %87 = call i32 (...) @dump_stack()
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %90 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %89, i32 0, i32 1
  %91 = call i32 @ubifs_dump_budg(%struct.ubifs_info* %88, i32* %90)
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %93 = call i32 @ubifs_dump_lprops(%struct.ubifs_info* %92)
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %95 = call i32 @dbg_check_lprops(%struct.ubifs_info* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 0
  %98 = call i32 @up_write(i32* %97)
  br label %99

99:                                               ; preds = %83, %73
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %70, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @reserve_space(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @dbg_jnl(i8*, ...) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_run_commit(%struct.ubifs_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ubifs_dump_budg(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_dump_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_check_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
