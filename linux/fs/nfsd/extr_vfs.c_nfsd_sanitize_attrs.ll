; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_sanitize_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_sanitize_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iattr = type { i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_KILL_PRIV = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.iattr*)* @nfsd_sanitize_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd_sanitize_attrs(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %5 = load %struct.iattr*, %struct.iattr** %4, align 8
  %6 = getelementptr inbounds %struct.iattr, %struct.iattr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATTR_MODE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* @S_IALLUGO, align 4
  %13 = load %struct.iattr*, %struct.iattr** %4, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @S_IALLUGO, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %11, %2
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %89, label %33

33:                                               ; preds = %27
  %34 = load %struct.iattr*, %struct.iattr** %4, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATTR_UID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.iattr*, %struct.iattr** %4, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATTR_GID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %40, %33
  %48 = load i32, i32* @ATTR_KILL_PRIV, align 4
  %49 = load %struct.iattr*, %struct.iattr** %4, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.iattr*, %struct.iattr** %4, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATTR_MODE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %47
  %60 = load i32, i32* @S_ISUID, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.iattr*, %struct.iattr** %4, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.iattr*, %struct.iattr** %4, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @S_IXGRP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @S_ISGID, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.iattr*, %struct.iattr** %4, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %59
  br label %88

80:                                               ; preds = %47
  %81 = load i32, i32* @ATTR_KILL_SUID, align 4
  %82 = load i32, i32* @ATTR_KILL_SGID, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.iattr*, %struct.iattr** %4, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %79
  br label %89

89:                                               ; preds = %88, %40, %27
  ret void
}

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
