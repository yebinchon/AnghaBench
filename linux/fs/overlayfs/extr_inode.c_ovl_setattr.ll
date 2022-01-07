; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.cred = type { i32 }
%struct.inode = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.iattr*, %struct.iattr** %5, align 8
  %14 = call i32 @setattr_prepare(%struct.dentry* %12, %struct.iattr* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %131

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @ovl_want_write(%struct.dentry* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %129

25:                                               ; preds = %19
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATTR_SIZE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = call %struct.dentry* @ovl_dentry_real(%struct.dentry* %33)
  %35 = call %struct.inode* @d_inode(%struct.dentry* %34)
  store %struct.inode* %35, %struct.inode** %10, align 8
  %36 = load i32, i32* @ETXTBSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = call i64 @atomic_read(i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %126

43:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = call i32 @ovl_copy_up(%struct.dentry* %48)
  store i32 %49, i32* %6, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = call i32 @ovl_copy_up_with_data(%struct.dentry* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %125, label %56

56:                                               ; preds = %53
  store %struct.inode* null, %struct.inode** %11, align 8
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %57)
  store %struct.dentry* %58, %struct.dentry** %8, align 8
  %59 = load %struct.iattr*, %struct.iattr** %5, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATTR_SIZE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.dentry*, %struct.dentry** %8, align 8
  %67 = call %struct.inode* @d_inode(%struct.dentry* %66)
  store %struct.inode* %67, %struct.inode** %11, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @get_write_access(%struct.inode* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %126

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.iattr*, %struct.iattr** %5, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATTR_KILL_SUID, align 4
  %79 = load i32, i32* @ATTR_KILL_SGID, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* @ATTR_MODE, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.iattr*, %struct.iattr** %5, align 8
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %74
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @inode_lock(i32 %93)
  %95 = load %struct.dentry*, %struct.dentry** %4, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.cred* @ovl_override_creds(i32 %97)
  store %struct.cred* %98, %struct.cred** %9, align 8
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = load %struct.iattr*, %struct.iattr** %5, align 8
  %101 = call i32 @notify_change(%struct.dentry* %99, %struct.iattr* %100, i32* null)
  store i32 %101, i32* %6, align 4
  %102 = load %struct.cred*, %struct.cred** %9, align 8
  %103 = call i32 @revert_creds(%struct.cred* %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %90
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dentry*, %struct.dentry** %4, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ovl_copyattr(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %90
  %115 = load %struct.dentry*, %struct.dentry** %8, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @inode_unlock(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = icmp ne %struct.inode* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.inode*, %struct.inode** %11, align 8
  %123 = call i32 @put_write_access(%struct.inode* %122)
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %53
  br label %126

126:                                              ; preds = %125, %72, %42
  %127 = load %struct.dentry*, %struct.dentry** %4, align 8
  %128 = call i32 @ovl_drop_write(%struct.dentry* %127)
  br label %129

129:                                              ; preds = %126, %24
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_real(%struct.dentry*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ovl_copy_up(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up_with_data(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_copyattr(i32, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
