; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_load_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_load_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_xattr_datum = type { i32, i64 }

@JFFS2_XFLAGS_DEAD = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_INVALID = common dso_local global i32 0, align 4
@JFFS2_XATTR_IS_CORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*)* @load_xattr_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_xattr_datum(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_datum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_xattr_datum*, align 8
  %6 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_xattr_datum* %1, %struct.jffs2_xattr_datum** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %8 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @JFFS2_XFLAGS_DEAD, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %14 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %20 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @JFFS2_XFLAGS_INVALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @JFFS2_XATTR_IS_CORRUPTED, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %29 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %30 = call i32 @is_xattr_datum_unchecked(%struct.jffs2_sb_info* %28, %struct.jffs2_xattr_datum* %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %35 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %36 = call i32 @do_verify_xattr_datum(%struct.jffs2_sb_info* %34, %struct.jffs2_xattr_datum* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %42 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %43 = call i32 @do_load_xattr_datum(%struct.jffs2_sb_info* %41, %struct.jffs2_xattr_datum* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %25, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_xattr_datum_unchecked(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @do_verify_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @do_load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
