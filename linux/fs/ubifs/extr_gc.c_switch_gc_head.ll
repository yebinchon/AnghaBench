; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_gc.c_switch_gc_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_gc.c_switch_gc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i64, i64, i32 }

@GCHD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"switch GC head from LEB %d:%d to LEB %d (waste %d bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @switch_gc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_gc_head(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @GCHD, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ubifs_wbuf* %15, %struct.ubifs_wbuf** %6, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(%struct.ubifs_info* %16, i32 %19)
  %21 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %36 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @dbg_gc(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %30, i32 %31, i64 %42)
  %44 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %45 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %74

50:                                               ; preds = %1
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %74

58:                                               ; preds = %50
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = load i64, i64* @GCHD, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %59, i64 %60, i32 %61, i32 0)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %58
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %70, i32 %71, i32 0)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %65, %56, %48
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_gc(i8*, i32, i64, i32, i64) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info*, i64, i32, i32) #1

declare dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
