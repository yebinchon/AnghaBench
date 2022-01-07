; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_stats.c_nfsd_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_stats.c_nfsd_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"rc %u %u %u\0Afh %u %u %u %u %u\0Aio %u %u\0A\00", align 1
@nfsdstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"th %u %u\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" %u.%03u\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0Ara %u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@nfsd_svcstats = common dso_local global i32 0, align 4
@LAST_NFS4_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @nfsd_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 15), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 14), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 13), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 12), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 11), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 10), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 9), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 8), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 7), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 6), align 8
  %20 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 5), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 4), align 8
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 0), align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = urem i32 %37, %38
  %40 = mul i32 %39, 1000
  %41 = load i32, i32* @HZ, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 1), align 8
  %53 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %65, %50
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 11
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsdstats, i32 0, i32 2), align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @seq_putc(%struct.seq_file* %69, i8 signext 10)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = call i32 @svc_seq_show(%struct.seq_file* %71, i32* @nfsd_svcstats)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @svc_seq_show(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
