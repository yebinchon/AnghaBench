; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init_debug.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_dlm_debug* }
%struct.ocfs2_dlm_debug = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"locking_state\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ocfs2_dlm_debug_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"locking_filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_dlm_init_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dlm_init_debug(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_dlm_debug*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 1
  %6 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %5, align 8
  store %struct.ocfs2_dlm_debug* %6, %struct.ocfs2_dlm_debug** %3, align 8
  %7 = load i32, i32* @S_IFREG, align 4
  %8 = load i32, i32* @S_IRUSR, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, %struct.ocfs2_super* %13, i32* @ocfs2_dlm_debug_fops)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %18, i32 0, i32 0
  %20 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %17, i32* %19)
  ret void
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ocfs2_super*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
