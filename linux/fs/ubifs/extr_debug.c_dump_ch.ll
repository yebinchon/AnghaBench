; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dump_ch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dump_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_ch = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"\09magic          %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09crc            %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09node_type      %d (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09group_type     %d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\09sqnum          %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09len            %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_ch*)* @dump_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ch(%struct.ubifs_ch* %0) #0 {
  %2 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_ch* %0, %struct.ubifs_ch** %2, align 8
  %3 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @le32_to_cpu(i32 %5)
  %7 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %9 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le32_to_cpu(i32 %10)
  %12 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  %13 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %14 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %18 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dbg_ntype(i32 %19)
  %21 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %16, i32 %20)
  %22 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %23 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %27 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dbg_gtype(i32 %28)
  %30 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %25, i32 %29)
  %31 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %32 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le64_to_cpu(i32 %33)
  %35 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %34)
  %36 = load %struct.ubifs_ch*, %struct.ubifs_ch** %2, align 8
  %37 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  ret void
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @dbg_gtype(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
