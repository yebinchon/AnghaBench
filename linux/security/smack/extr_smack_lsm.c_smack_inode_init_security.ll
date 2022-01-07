; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.inode_smack = type { i32 }
%struct.smack_known = type { i32, i32 }

@XATTR_SMACK_SUFFIX = common dso_local global i8* null, align 8
@MAY_TRANSMUTE = common dso_local global i32 0, align 4
@SMK_INODE_CHANGED = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*, i8**, i8**, i64*)* @smack_inode_init_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_init_security(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, i8** %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.inode_smack*, align 8
  %15 = alloca %struct.smack_known*, align 8
  %16 = alloca %struct.smack_known*, align 8
  %17 = alloca %struct.smack_known*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.inode_smack* @smack_inode(%struct.inode* %19)
  store %struct.inode_smack* %20, %struct.inode_smack** %14, align 8
  %21 = call %struct.smack_known* (...) @smk_of_current()
  store %struct.smack_known* %21, %struct.smack_known** %15, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.smack_known* @smk_of_inode(%struct.inode* %22)
  store %struct.smack_known* %23, %struct.smack_known** %16, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call %struct.smack_known* @smk_of_inode(%struct.inode* %24)
  store %struct.smack_known* %25, %struct.smack_known** %17, align 8
  %26 = load i8**, i8*** %11, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i8*, i8** @XATTR_SMACK_SUFFIX, align 8
  %30 = load i8**, i8*** %11, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i8**, i8*** %12, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load i64*, i64** %13, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %86

37:                                               ; preds = %34
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.smack_known*, %struct.smack_known** %15, align 8
  %40 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smack_known*, %struct.smack_known** %17, align 8
  %43 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smack_known*, %struct.smack_known** %15, align 8
  %46 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %45, i32 0, i32 1
  %47 = call i32 @smk_access_entry(i32 %41, i32 %44, i32* %46)
  store i32 %47, i32* %18, align 4
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load i32, i32* %18, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %37
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @MAY_TRANSMUTE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i64 @smk_inode_transmutable(%struct.inode* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.smack_known*, %struct.smack_known** %17, align 8
  store %struct.smack_known* %61, %struct.smack_known** %16, align 8
  %62 = load i32, i32* @SMK_INODE_CHANGED, align 4
  %63 = load %struct.inode_smack*, %struct.inode_smack** %14, align 8
  %64 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %56, %51, %37
  %68 = load %struct.smack_known*, %struct.smack_known** %16, align 8
  %69 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call i8* @kstrdup(i32 %70, i32 %71)
  %73 = load i8**, i8*** %12, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %12, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.smack_known*, %struct.smack_known** %16, align 8
  %82 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strlen(i32 %83)
  %85 = load i64*, i64** %13, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %34, %31
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.inode_smack* @smack_inode(%struct.inode*) #1

declare dso_local %struct.smack_known* @smk_of_current(...) #1

declare dso_local %struct.smack_known* @smk_of_inode(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @smk_access_entry(i32, i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @smk_inode_transmutable(%struct.inode*) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
