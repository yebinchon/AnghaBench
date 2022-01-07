; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.nfs4_createdata = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nfs4_label*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@NF4SOCK = common dso_local global i32 0, align 4
@NF4FIFO = common dso_local global i32 0, align 4
@NF4BLK = common dso_local global i32 0, align 4
@NF4CHR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, %struct.nfs4_label*, i32)* @_nfs4_proc_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_mknod(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, %struct.nfs4_label* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca %struct.nfs4_label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_createdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.iattr* %2, %struct.iattr** %8, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.iattr*, %struct.iattr** %8, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.iattr*, %struct.iattr** %8, align 8
  %23 = load i32, i32* @NF4SOCK, align 4
  %24 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %19, i32* %21, %struct.iattr* %22, i32 %23)
  store %struct.nfs4_createdata* %24, %struct.nfs4_createdata** %11, align 8
  %25 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %26 = icmp eq %struct.nfs4_createdata* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %105

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @S_ISFIFO(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @NF4FIFO, align 4
  %34 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %35 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  br label %93

37:                                               ; preds = %28
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @S_ISBLK(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32, i32* @NF4BLK, align 4
  %43 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %44 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i8* @MAJOR(i32 %46)
  %48 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %49 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %47, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @MINOR(i32 %53)
  %55 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %56 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  br label %92

60:                                               ; preds = %37
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @S_ISCHR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i32, i32* @NF4CHR, align 4
  %66 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %67 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i8* @MAJOR(i32 %69)
  %71 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %72 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @MINOR(i32 %76)
  %78 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %79 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %77, i8** %82, align 8
  br label %91

83:                                               ; preds = %60
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @S_ISSOCK(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %102

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %41
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.nfs4_label*, %struct.nfs4_label** %9, align 8
  %95 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %96 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.nfs4_label* %94, %struct.nfs4_label** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %101 = call i32 @nfs4_do_create(%struct.inode* %98, %struct.dentry* %99, %struct.nfs4_createdata* %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %104 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %103)
  br label %105

105:                                              ; preds = %102, %27
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i8* @MAJOR(i32) #1

declare dso_local i8* @MINOR(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
