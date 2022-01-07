; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_empty_dir_priv = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ocfs2_empty_dir_filldir = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"bad directory (dir #%llu) - no `.' or `..'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_empty_dir_priv, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @ocfs2_empty_dir_filldir, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i64 @ocfs2_dir_indexed(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @ocfs2_empty_dir_dx(%struct.inode* %16, %struct.ocfs2_empty_dir_priv* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 3
  %27 = call i32 @ocfs2_dir_foreach(%struct.inode* %25, %struct.TYPE_3__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @ML_ERROR, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mlog(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46)
  store i32 1, i32* %2, align 4
  br label %54

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.ocfs2_empty_dir_priv, %struct.ocfs2_empty_dir_priv* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32 @ocfs2_empty_dir_dx(%struct.inode*, %struct.ocfs2_empty_dir_priv*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_dir_foreach(%struct.inode*, %struct.TYPE_3__*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
