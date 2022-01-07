; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_stats_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_stats_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.can_rcv_lists_stats*, %struct.can_pkg_stats* }
%struct.TYPE_3__ = type { i64 }
%struct.can_rcv_lists_stats = type { i64, i64, i64, i64 }
%struct.can_pkg_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c" %8ld transmitted frames (TXF)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" %8ld received frames (RXF)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" %8ld matched frames (RXMF)\0A\00", align 1
@can_stat_update = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c" %8ld %% total match ratio (RXMR)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total tx rate (TXR)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total rx rate (RXR)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" %8ld %% current match ratio (CRXMR)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current tx rate (CTXR)\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current rx rate (CRXR)\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c" %8ld %% max match ratio (MRXMR)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max tx rate (MTXR)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max rx rate (MRXR)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c" %8ld current receive list entries (CRCV)\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c" %8ld maximum receive list entries (MRCV)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\0A %8ld statistic resets (STR)\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c" %8ld user statistic resets (USTR)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @can_stats_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_stats_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.can_pkg_stats*, align 8
  %7 = alloca %struct.can_rcv_lists_stats*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %13, align 8
  store %struct.can_pkg_stats* %14, %struct.can_pkg_stats** %6, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %17, align 8
  store %struct.can_rcv_lists_stats* %18, %struct.can_rcv_lists_stats** %7, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_putc(%struct.seq_file* %19, i8 signext 10)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %23 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %28 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %33 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @seq_putc(%struct.seq_file* %36, i8 signext 10)
  %38 = load %struct.net*, %struct.net** %5, align 8
  %39 = getelementptr inbounds %struct.net, %struct.net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @can_stat_update, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %97

45:                                               ; preds = %2
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %48 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %53 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %58 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = call i32 @seq_putc(%struct.seq_file* %61, i8 signext 10)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %65 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %70 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %75 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = call i32 @seq_putc(%struct.seq_file* %78, i8 signext 10)
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %82 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %87 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %6, align 8
  %92 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_putc(%struct.seq_file* %95, i8 signext 10)
  br label %97

97:                                               ; preds = %45, %2
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %100 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %105 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %106)
  %108 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %109 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %115 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %112, %97
  %119 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %120 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = load %struct.can_rcv_lists_stats*, %struct.can_rcv_lists_stats** %7, align 8
  %126 = getelementptr inbounds %struct.can_rcv_lists_stats, %struct.can_rcv_lists_stats* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i64 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = call i32 @seq_putc(%struct.seq_file* %130, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
