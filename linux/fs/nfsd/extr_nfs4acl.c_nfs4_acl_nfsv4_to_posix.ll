; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfs4_acl_nfsv4_to_posix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_nfs4_acl_nfsv4_to_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_acl = type { i32, %struct.nfs4_ace* }
%struct.nfs4_ace = type { i64, i32 }
%struct.posix_acl = type { i32 }
%struct.posix_acl_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i64 0, align 8
@NFS4_ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i64 0, align 8
@NFS4_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@NFS4_INHERITANCE_FLAGS = common dso_local global i32 0, align 4
@NFS4_ACL_DIR = common dso_local global i32 0, align 4
@NFS4_ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_acl*, %struct.posix_acl**, %struct.posix_acl**, i32)* @nfs4_acl_nfsv4_to_posix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_acl_nfsv4_to_posix(%struct.nfs4_acl* %0, %struct.posix_acl** %1, %struct.posix_acl** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_acl*, align 8
  %7 = alloca %struct.posix_acl**, align 8
  %8 = alloca %struct.posix_acl**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.posix_acl_state, align 4
  %11 = alloca %struct.posix_acl_state, align 4
  %12 = alloca %struct.nfs4_ace*, align 8
  %13 = alloca i32, align 4
  store %struct.nfs4_acl* %0, %struct.nfs4_acl** %6, align 8
  store %struct.posix_acl** %1, %struct.posix_acl*** %7, align 8
  store %struct.posix_acl** %2, %struct.posix_acl*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nfs4_acl*, %struct.nfs4_acl** %6, align 8
  %15 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @init_state(%struct.posix_acl_state* %10, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %145

22:                                               ; preds = %4
  %23 = load %struct.nfs4_acl*, %struct.nfs4_acl** %6, align 8
  %24 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @init_state(%struct.posix_acl_state* %11, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %142

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nfs4_acl*, %struct.nfs4_acl** %6, align 8
  %34 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %33, i32 0, i32 1
  %35 = load %struct.nfs4_ace*, %struct.nfs4_ace** %34, align 8
  store %struct.nfs4_ace* %35, %struct.nfs4_ace** %12, align 8
  br label %36

36:                                               ; preds = %98, %30
  %37 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %38 = load %struct.nfs4_acl*, %struct.nfs4_acl** %6, align 8
  %39 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %38, i32 0, i32 1
  %40 = load %struct.nfs4_ace*, %struct.nfs4_ace** %39, align 8
  %41 = load %struct.nfs4_acl*, %struct.nfs4_acl** %6, align 8
  %42 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %40, i64 %44
  %46 = icmp ult %struct.nfs4_ace* %37, %45
  br i1 %46, label %47, label %101

47:                                               ; preds = %36
  %48 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %49 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %55 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFS4_ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %140

60:                                               ; preds = %53, %47
  %61 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %62 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NFS4_SUPPORTED_FLAGS, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %140

69:                                               ; preds = %60
  %70 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %71 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NFS4_INHERITANCE_FLAGS, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %78 = call i32 @process_one_v4_ace(%struct.posix_acl_state* %10, %struct.nfs4_ace* %77)
  br label %98

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @NFS4_ACL_DIR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %140

85:                                               ; preds = %79
  %86 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %87 = call i32 @process_one_v4_ace(%struct.posix_acl_state* %11, %struct.nfs4_ace* %86)
  %88 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %89 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NFS4_ACE_INHERIT_ONLY_ACE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %96 = call i32 @process_one_v4_ace(%struct.posix_acl_state* %10, %struct.nfs4_ace* %95)
  br label %97

97:                                               ; preds = %94, %85
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.nfs4_ace*, %struct.nfs4_ace** %12, align 8
  %100 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %99, i32 1
  store %struct.nfs4_ace* %100, %struct.nfs4_ace** %12, align 8
  br label %36

101:                                              ; preds = %36
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.posix_acl* @posix_state_to_acl(%struct.posix_acl_state* %10, i32 %102)
  %104 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  store %struct.posix_acl* %103, %struct.posix_acl** %104, align 8
  %105 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %106 = load %struct.posix_acl*, %struct.posix_acl** %105, align 8
  %107 = call i64 @IS_ERR(%struct.posix_acl* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %111 = load %struct.posix_acl*, %struct.posix_acl** %110, align 8
  %112 = call i32 @PTR_ERR(%struct.posix_acl* %111)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %113, align 8
  br label %140

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %117 = or i32 %115, %116
  %118 = call %struct.posix_acl* @posix_state_to_acl(%struct.posix_acl_state* %11, i32 %117)
  %119 = load %struct.posix_acl**, %struct.posix_acl*** %8, align 8
  store %struct.posix_acl* %118, %struct.posix_acl** %119, align 8
  %120 = load %struct.posix_acl**, %struct.posix_acl*** %8, align 8
  %121 = load %struct.posix_acl*, %struct.posix_acl** %120, align 8
  %122 = call i64 @IS_ERR(%struct.posix_acl* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load %struct.posix_acl**, %struct.posix_acl*** %8, align 8
  %126 = load %struct.posix_acl*, %struct.posix_acl** %125, align 8
  %127 = call i32 @PTR_ERR(%struct.posix_acl* %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.posix_acl**, %struct.posix_acl*** %8, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %128, align 8
  %129 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %130 = load %struct.posix_acl*, %struct.posix_acl** %129, align 8
  %131 = call i32 @posix_acl_release(%struct.posix_acl* %130)
  %132 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %132, align 8
  br label %140

133:                                              ; preds = %114
  %134 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %135 = load %struct.posix_acl*, %struct.posix_acl** %134, align 8
  %136 = call i32 @sort_pacl(%struct.posix_acl* %135)
  %137 = load %struct.posix_acl**, %struct.posix_acl*** %8, align 8
  %138 = load %struct.posix_acl*, %struct.posix_acl** %137, align 8
  %139 = call i32 @sort_pacl(%struct.posix_acl* %138)
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %133, %124, %109, %84, %68, %59
  %141 = call i32 @free_state(%struct.posix_acl_state* %11)
  br label %142

142:                                              ; preds = %140, %29
  %143 = call i32 @free_state(%struct.posix_acl_state* %10)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %20
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @init_state(%struct.posix_acl_state*, i32) #1

declare dso_local i32 @process_one_v4_ace(%struct.posix_acl_state*, %struct.nfs4_ace*) #1

declare dso_local %struct.posix_acl* @posix_state_to_acl(%struct.posix_acl_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @sort_pacl(%struct.posix_acl*) #1

declare dso_local i32 @free_state(%struct.posix_acl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
