; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_rawdata_open.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_rawdata_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.seq_file = type { i64 }
%struct.aa_loaddata = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32 (%struct.seq_file*, i8*)*)* @seq_rawdata_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_rawdata_open(%struct.inode* %0, %struct.file* %1, i32 (%struct.seq_file*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %8 = alloca %struct.aa_loaddata*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 (%struct.seq_file*, i8*)* %2, i32 (%struct.seq_file*, i8*)** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.aa_loaddata* @__aa_get_loaddata(i32 %12)
  store %struct.aa_loaddata* %13, %struct.aa_loaddata** %8, align 8
  %14 = load %struct.aa_loaddata*, %struct.aa_loaddata** %8, align 8
  %15 = icmp ne %struct.aa_loaddata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %7, align 8
  %22 = load %struct.aa_loaddata*, %struct.aa_loaddata** %8, align 8
  %23 = call i32 @single_open(%struct.file* %20, i32 (%struct.seq_file*, i8*)* %21, %struct.aa_loaddata* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.seq_file*
  %36 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ false, %26 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @AA_BUG(i32 %41)
  %43 = load %struct.aa_loaddata*, %struct.aa_loaddata** %8, align 8
  %44 = call i32 @aa_put_loaddata(%struct.aa_loaddata* %43)
  br label %45

45:                                               ; preds = %39, %19
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.aa_loaddata* @__aa_get_loaddata(i32) #1

declare dso_local i32 @single_open(%struct.file*, i32 (%struct.seq_file*, i8*)*, %struct.aa_loaddata*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_put_loaddata(%struct.aa_loaddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
