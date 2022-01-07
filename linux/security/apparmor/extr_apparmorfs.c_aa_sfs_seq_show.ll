; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aa_sfs_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aa_sfs_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_sfs_entry* }
%struct.aa_sfs_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%#08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @aa_sfs_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_sfs_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aa_sfs_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %8, align 8
  store %struct.aa_sfs_entry* %9, %struct.aa_sfs_entry** %6, align 8
  %10 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %6, align 8
  %11 = icmp ne %struct.aa_sfs_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %6, align 8
  %15 = getelementptr inbounds %struct.aa_sfs_entry, %struct.aa_sfs_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %41 [
    i32 130, label %17
    i32 129, label %27
    i32 128, label %34
  ]

17:                                               ; preds = %13
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %6, align 8
  %20 = getelementptr inbounds %struct.aa_sfs_entry, %struct.aa_sfs_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %42

27:                                               ; preds = %13
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %6, align 8
  %30 = getelementptr inbounds %struct.aa_sfs_entry, %struct.aa_sfs_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %42

34:                                               ; preds = %13
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.aa_sfs_entry*, %struct.aa_sfs_entry** %6, align 8
  %37 = getelementptr inbounds %struct.aa_sfs_entry, %struct.aa_sfs_entry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %42

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %41, %34, %27, %17
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
