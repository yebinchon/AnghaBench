; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dirent_would_fit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dirent_would_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dir_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_dir_entry*, i32)* @ocfs2_dirent_would_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dirent_would_fit(%struct.ocfs2_dir_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_dir_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_dir_entry* %0, %struct.ocfs2_dir_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @le64_to_cpu(i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %4, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %35

20:                                               ; preds = %12, %2
  %21 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %4, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @OCFS2_DIR_REC_LEN(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %4, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %29, %30
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
