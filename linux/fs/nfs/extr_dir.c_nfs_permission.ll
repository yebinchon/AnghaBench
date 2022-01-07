; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFSIOS_VFSACCESS = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@MAY_CHDIR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@MAY_OPEN = common dso_local global i32 0, align 4
@NFS_CAP_ATOMIC_OPEN = common dso_local global i32 0, align 4
@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: permission(%s/%lu), mask=0x%x, res=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %8, %struct.cred** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i32, i32* @NFSIOS_VFSACCESS, align 4
  %11 = call i32 @nfs_inc_stats(%struct.inode* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAY_READ, align 4
  %14 = load i32, i32* @MAY_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MAY_EXEC, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %92

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MAY_ACCESS, align 4
  %24 = load i32, i32* @MAY_CHDIR, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %61

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %60 [
    i32 129, label %35
    i32 128, label %36
    i32 130, label %48
  ]

35:                                               ; preds = %29
  br label %92

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAY_OPEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load i32, i32* @NFS_CAP_ATOMIC_OPEN, align 4
  %44 = call i32 @nfs_server_capable(%struct.inode* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %138

47:                                               ; preds = %41, %36
  br label %60

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAY_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MAY_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %92

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %29, %47
  br label %61

61:                                               ; preds = %60, %28
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %118

68:                                               ; preds = %61
  %69 = call i32 (...) @rcu_read_lock()
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load %struct.cred*, %struct.cred** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @nfs_do_access(%struct.inode* %70, %struct.cred* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = call i32 (...) @rcu_read_unlock()
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @ECHILD, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %68
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = load %struct.cred*, %struct.cred** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @nfs_do_access(%struct.inode* %87, %struct.cred* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %81, %68
  br label %92

92:                                               ; preds = %137, %91, %58, %35, %20
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MAY_EXEC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @nfs_execute_ok(%struct.inode* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %100, %95, %92
  %105 = load i32, i32* @VFS, align 4
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dfprintk(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %138

118:                                              ; preds = %67
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @ECHILD, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %138

126:                                              ; preds = %118
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call i32 @NFS_SERVER(%struct.inode* %127)
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = call i32 @nfs_revalidate_inode(i32 %128, %struct.inode* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @generic_permission(%struct.inode* %134, i32 %135)
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %133, %126
  br label %92

138:                                              ; preds = %123, %104, %46
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nfs_do_access(%struct.inode*, %struct.cred*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_execute_ok(%struct.inode*, i32) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
