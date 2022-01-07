; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_build_lock_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_build_lock_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCFS2_NUM_LOCK_TYPES = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%c%s%016llx%08x\00", align 1
@OCFS2_LOCK_ID_PAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"built lock resource with name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i8*)* @ocfs2_build_lock_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_build_lock_name(i32 %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OCFS2_NUM_LOCK_TYPES, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @OCFS2_LOCK_ID_MAX_LEN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ocfs2_lock_type_char(i32 %17)
  %19 = load i32, i32* @OCFS2_LOCK_ID_PAD, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i64 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @OCFS2_LOCK_ID_MAX_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp ne i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @ocfs2_lock_type_char(i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
