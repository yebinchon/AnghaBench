; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_compose_entry_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_compose_entry_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd3_readdirres = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.svc_export*, %struct.dentry* }
%struct.svc_export = type { i32 }
%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.svc_fh = type { i32 }

@nfserr_noent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd3_readdirres*, %struct.svc_fh*, i8*, i32, i64)* @compose_entry_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compose_entry_fh(%struct.nfsd3_readdirres* %0, %struct.svc_fh* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd3_readdirres*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i32, align 4
  store %struct.nfsd3_readdirres* %0, %struct.nfsd3_readdirres** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @nfserr_noent, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %13, align 8
  %21 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.svc_export*, %struct.svc_export** %23, align 8
  store %struct.svc_export* %24, %struct.svc_export** %12, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @isdotent(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.dentry*, %struct.dentry** %13, align 8
  %34 = call %struct.dentry* @dget_parent(%struct.dentry* %33)
  store %struct.dentry* %34, %struct.dentry** %14, align 8
  %35 = load %struct.dentry*, %struct.dentry** %14, align 8
  %36 = load %struct.dentry*, %struct.dentry** %13, align 8
  %37 = icmp eq %struct.dentry* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %81

39:                                               ; preds = %32
  br label %43

40:                                               ; preds = %29
  %41 = load %struct.dentry*, %struct.dentry** %13, align 8
  %42 = call %struct.dentry* @dget(%struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %14, align 8
  br label %43

43:                                               ; preds = %40, %39
  br label %49

44:                                               ; preds = %5
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.dentry*, %struct.dentry** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.dentry* @lookup_one_len_unlocked(i8* %45, %struct.dentry* %46, i32 %47)
  store %struct.dentry* %48, %struct.dentry** %14, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.dentry*, %struct.dentry** %14, align 8
  %51 = call i64 @IS_ERR(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %6, align 4
  br label %85

55:                                               ; preds = %49
  %56 = load %struct.dentry*, %struct.dentry** %14, align 8
  %57 = call i64 @d_mountpoint(%struct.dentry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %81

60:                                               ; preds = %55
  %61 = load %struct.dentry*, %struct.dentry** %14, align 8
  %62 = call i64 @d_really_is_negative(%struct.dentry* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %81

65:                                               ; preds = %60
  %66 = load %struct.dentry*, %struct.dentry** %14, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %81

74:                                               ; preds = %65
  %75 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %76 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %77 = load %struct.dentry*, %struct.dentry** %14, align 8
  %78 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %79 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %78, i32 0, i32 0
  %80 = call i32 @fh_compose(%struct.svc_fh* %75, %struct.svc_export* %76, %struct.dentry* %77, %struct.TYPE_4__* %79)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %74, %73, %64, %59, %38
  %82 = load %struct.dentry*, %struct.dentry** %14, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %53
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i8*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.dentry*, %struct.TYPE_4__*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
