; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_export = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32, i32 }

@NFSD_MAY_MASK = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_MAY_LOCAL_ACCESS = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@NFSD_MAY_TRUNC = common dso_local global i32 0, align 4
@nfserr_rofs = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i32 0, align 4
@NFSD_MAY_LOCK = common dso_local global i32 0, align 4
@NFSEXP_NOAUTHNLM = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NFSD_MAY_READ_IF_EXEC = common dso_local global i32 0, align 4
@NFSD_MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_permission(%struct.svc_rqst* %0, %struct.svc_export* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_export* %1, %struct.svc_export** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NFSD_MAY_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @NFSD_MAY_NOP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %143

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NFSD_MAY_LOCAL_ACCESS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %28 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %36 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %37 = call i64 @exp_rdonly(%struct.svc_rqst* %35, %struct.svc_export* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %41 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @__mnt_is_readonly(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %34
  %47 = load i32, i32* @nfserr_rofs, align 4
  store i32 %47, i32* %5, align 4
  br label %143

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call i64 @IS_IMMUTABLE(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @nfserr_perm, align 4
  store i32 %53, i32* %5, align 4
  br label %143

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = call i64 @IS_APPEND(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @nfserr_perm, align 4
  store i32 %66, i32* %5, align 4
  br label %143

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NFSD_MAY_LOCK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %74 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NFSEXP_NOAUTHNLM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %143

80:                                               ; preds = %72
  %81 = load i32, i32* @NFSD_MAY_READ, align 4
  %82 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (...) @current_fsuid()
  %95 = call i64 @uid_eq(i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %143

98:                                               ; preds = %90, %85
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MAY_READ, align 4
  %102 = load i32, i32* @MAY_WRITE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MAY_EXEC, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %100, %105
  %107 = call i32 @inode_permission(%struct.inode* %99, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @EACCES, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %98
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @S_ISREG(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %112
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @NFSD_MAY_READ, align 4
  %121 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %122 = or i32 %120, %121
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @NFSD_MAY_READ, align 4
  %127 = load i32, i32* @NFSD_MAY_READ_IF_EXEC, align 4
  %128 = or i32 %126, %127
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124, %118
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = load i32, i32* @MAY_EXEC, align 4
  %133 = call i32 @inode_permission(%struct.inode* %131, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %124, %112, %98
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @nfserrno(i32 %138)
  br label %141

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ %139, %137 ], [ 0, %140 ]
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %97, %79, %65, %52, %46, %19
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @exp_rdonly(%struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local i64 @__mnt_is_readonly(i32) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
