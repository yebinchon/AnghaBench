; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_make_bad_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_make_bad_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@GOSSIP_UTILS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"*** NOT making bad root inode %pU\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"*** making bad inode %pU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @orangefs_make_bad_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orangefs_make_bad_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i64 @is_root_handle(%struct.inode* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @get_khandle_from_ino(%struct.inode* %8)
  %10 = call i32 @gossip_debug(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call i32 @get_khandle_from_ino(%struct.inode* %13)
  %15 = call i32 @gossip_debug(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call i32 @make_bad_inode(%struct.inode* %16)
  br label %18

18:                                               ; preds = %11, %6
  ret void
}

declare dso_local i64 @is_root_handle(%struct.inode*) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @get_khandle_from_ino(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
