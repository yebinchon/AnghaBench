; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_convert_permissions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_convert_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileEntry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ICBTAG_FLAG_SETUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_STICKY = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileEntry*)* @udf_convert_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_convert_permissions(%struct.fileEntry* %0) #0 {
  %2 = alloca %struct.fileEntry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fileEntry* %0, %struct.fileEntry** %2, align 8
  %6 = load %struct.fileEntry*, %struct.fileEntry** %2, align 8
  %7 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.fileEntry*, %struct.fileEntry** %2, align 8
  %11 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 7
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 56
  %20 = or i32 %16, %19
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 448
  %24 = or i32 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ICBTAG_FLAG_SETUID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @S_ISUID, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %24, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ICBTAG_FLAG_SETGID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @S_ISGID, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = or i32 %34, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ICBTAG_FLAG_STICKY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @S_ISVTX, align 4
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = or i32 %44, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
