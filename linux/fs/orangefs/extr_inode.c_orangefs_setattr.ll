; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }

@GOSSIP_INODE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"__orangefs_setattr: called on %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"orangefs_setattr: returning %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %6 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = ptrtoint %struct.dentry* %7 to i32
  %9 = call i32 @gossip_debug(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = load %struct.iattr*, %struct.iattr** %4, align 8
  %12 = call i32 @setattr_prepare(%struct.dentry* %10, %struct.iattr* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @d_inode(%struct.dentry* %17)
  %19 = load %struct.iattr*, %struct.iattr** %4, align 8
  %20 = call i32 @__orangefs_setattr(i32 %18, %struct.iattr* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = call i32 @sync_inode_metadata(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @gossip_debug(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @__orangefs_setattr(i32, %struct.iattr*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @sync_inode_metadata(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
