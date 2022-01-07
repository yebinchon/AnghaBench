; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_iget_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_iget_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"dead extended attribute entry, error %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"corrupt extended attribute entry\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.ubifs_info*, i32)* @iget_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @iget_xattr(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.inode* @ubifs_iget(i32 %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call i64 @PTR_ERR(%struct.inode* %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %21, %struct.inode** %3, align 8
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_2__* @ubifs_inode(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %29, %struct.inode** %3, align 8
  br label %38

30:                                               ; preds = %22
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @iput(%struct.inode* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.inode* @ERR_PTR(i32 %36)
  store %struct.inode* %37, %struct.inode** %3, align 8
  br label %38

38:                                               ; preds = %30, %28, %15
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %39
}

declare dso_local %struct.inode* @ubifs_iget(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i64 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
