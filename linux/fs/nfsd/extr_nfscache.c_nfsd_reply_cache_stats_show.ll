; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.seq_file = type { %struct.nfsd_net* }
%struct.nfsd_net = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"max entries:           %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"num entries:           %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"hash buckets:          %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mem usage:             %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cache hits:            %u\0A\00", align 1
@nfsdstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cache misses:          %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"not cached:            %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"payload misses:        %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"longest chain len:     %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"cachesize at longest:  %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @nfsd_reply_cache_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_reply_cache_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfsd_net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  store %struct.nfsd_net* %8, %struct.nfsd_net** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %15, i32 0, i32 6
  %17 = call i32 @atomic_read(i32* %16)
  %18 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 0), align 4
  %32 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 1), align 4
  %35 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 2), align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %41 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
