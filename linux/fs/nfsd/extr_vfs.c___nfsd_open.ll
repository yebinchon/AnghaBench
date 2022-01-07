; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c___nfsd_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c___nfsd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.path = type { i32, i32 }
%struct.inode = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@NFSD_MAY_64BIT_COOKIE = common dso_local global i32 0, align 4
@FMODE_64BITHASH = common dso_local global i32 0, align 4
@FMODE_32BITHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.file**)* @__nfsd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfsd_open(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, i32 %3, %struct.file** %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file**, align 8
  %11 = alloca %struct.path, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.file** %4, %struct.file*** %10, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_LARGEFILE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %21 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %28 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.inode* @d_inode(i32 %32)
  store %struct.inode* %33, %struct.inode** %12, align 8
  %34 = load i32, i32* @nfserr_perm, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = call i64 @IS_APPEND(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %129

44:                                               ; preds = %38, %5
  %45 = load %struct.inode*, %struct.inode** %12, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISREG(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %12, align 8
  %52 = call i64 @mandatory_lock(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %129

55:                                               ; preds = %50, %44
  %56 = load %struct.inode*, %struct.inode** %12, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %129

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nfsd_open_break_lease(%struct.inode* %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %126

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @NFSD_MAY_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @O_RDWR, align 4
  %80 = load i32, i32* @O_LARGEFILE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %14, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @O_WRONLY, align 4
  %84 = load i32, i32* @O_LARGEFILE, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %68
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (...) @current_cred()
  %90 = call %struct.file* @dentry_open(%struct.path* %11, i32 %88, i32 %89)
  store %struct.file* %90, %struct.file** %13, align 8
  %91 = load %struct.file*, %struct.file** %13, align 8
  %92 = call i64 @IS_ERR(%struct.file* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.file*, %struct.file** %13, align 8
  %96 = call i32 @PTR_ERR(%struct.file* %95)
  store i32 %96, i32* %16, align 4
  br label %126

97:                                               ; preds = %87
  %98 = load %struct.file*, %struct.file** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @ima_file_check(%struct.file* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.file*, %struct.file** %13, align 8
  %105 = call i32 @fput(%struct.file* %104)
  br label %126

106:                                              ; preds = %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @NFSD_MAY_64BIT_COOKIE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @FMODE_64BITHASH, align 4
  %113 = load %struct.file*, %struct.file** %13, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @FMODE_32BITHASH, align 4
  %119 = load %struct.file*, %struct.file** %13, align 8
  %120 = getelementptr inbounds %struct.file, %struct.file* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.file*, %struct.file** %13, align 8
  %125 = load %struct.file**, %struct.file*** %10, align 8
  store %struct.file* %124, %struct.file** %125, align 8
  br label %126

126:                                              ; preds = %123, %103, %94, %67
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @nfserrno(i32 %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %126, %60, %54, %43
  %130 = load i32, i32* %15, align 4
  ret i32 %130
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i32 @nfsd_open_break_lease(%struct.inode*, i32) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @ima_file_check(%struct.file*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
