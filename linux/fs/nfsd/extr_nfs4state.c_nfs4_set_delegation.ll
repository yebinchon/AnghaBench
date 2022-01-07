; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_set_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_set_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { i32, i32 }
%struct.nfs4_client = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_file = type { i32, %struct.nfsd_file*, i32, i64 }
%struct.nfsd_file = type { i32 }
%struct.nfs4_clnt_odstate = type { i32 }
%struct.file_lock = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_OPEN_DELEGATE_READ = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_delegation* (%struct.nfs4_client*, %struct.svc_fh*, %struct.nfs4_file*, %struct.nfs4_clnt_odstate*)* @nfs4_set_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_delegation* @nfs4_set_delegation(%struct.nfs4_client* %0, %struct.svc_fh* %1, %struct.nfs4_file* %2, %struct.nfs4_clnt_odstate* %3) #0 {
  %5 = alloca %struct.nfs4_delegation*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.nfs4_file*, align 8
  %9 = alloca %struct.nfs4_clnt_odstate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_delegation*, align 8
  %12 = alloca %struct.nfsd_file*, align 8
  %13 = alloca %struct.file_lock*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store %struct.nfs4_file* %2, %struct.nfs4_file** %8, align 8
  store %struct.nfs4_clnt_odstate* %3, %struct.nfs4_clnt_odstate** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %15 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.nfs4_delegation* @ERR_PTR(i32 %20)
  store %struct.nfs4_delegation* %21, %struct.nfs4_delegation** %5, align 8
  br label %162

22:                                               ; preds = %4
  %23 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %24 = call %struct.nfsd_file* @find_readable_file(%struct.nfs4_file* %23)
  store %struct.nfsd_file* %24, %struct.nfsd_file** %12, align 8
  %25 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %26 = icmp ne %struct.nfsd_file* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = call i32 @WARN_ON_ONCE(i32 1)
  %29 = load i32, i32* @EBADF, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.nfs4_delegation* @ERR_PTR(i32 %30)
  store %struct.nfs4_delegation* %31, %struct.nfs4_delegation** %5, align 8
  br label %162

32:                                               ; preds = %22
  %33 = call i32 @spin_lock(i32* @state_lock)
  %34 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %35 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %34, i32 0, i32 2
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %38 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %39 = call i64 @nfs4_delegation_exists(%struct.nfs4_client* %37, %struct.nfs4_file* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %46 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %45, i32 0, i32 1
  %47 = load %struct.nfsd_file*, %struct.nfsd_file** %46, align 8
  %48 = icmp ne %struct.nfsd_file* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %51 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %52 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %51, i32 0, i32 1
  store %struct.nfsd_file* %50, %struct.nfsd_file** %52, align 8
  %53 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %54 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store %struct.nfsd_file* null, %struct.nfsd_file** %12, align 8
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %57 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %63 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = call i32 @spin_unlock(i32* @state_lock)
  %66 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %67 = icmp ne %struct.nfsd_file* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.nfsd_file*, %struct.nfsd_file** %12, align 8
  %70 = call i32 @nfsd_file_put(%struct.nfsd_file* %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.nfs4_delegation* @ERR_PTR(i32 %75)
  store %struct.nfs4_delegation* %76, %struct.nfs4_delegation** %5, align 8
  br label %162

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %81 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %82 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %83 = load %struct.nfs4_clnt_odstate*, %struct.nfs4_clnt_odstate** %9, align 8
  %84 = call %struct.nfs4_delegation* @alloc_init_deleg(%struct.nfs4_client* %80, %struct.nfs4_file* %81, %struct.svc_fh* %82, %struct.nfs4_clnt_odstate* %83)
  store %struct.nfs4_delegation* %84, %struct.nfs4_delegation** %11, align 8
  %85 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %86 = icmp ne %struct.nfs4_delegation* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %157

88:                                               ; preds = %77
  %89 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %90 = load i32, i32* @NFS4_OPEN_DELEGATE_READ, align 4
  %91 = call %struct.file_lock* @nfs4_alloc_init_lease(%struct.nfs4_delegation* %89, i32 %90)
  store %struct.file_lock* %91, %struct.file_lock** %13, align 8
  %92 = load %struct.file_lock*, %struct.file_lock** %13, align 8
  %93 = icmp ne %struct.file_lock* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %149

95:                                               ; preds = %88
  %96 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %97 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %96, i32 0, i32 1
  %98 = load %struct.nfsd_file*, %struct.nfsd_file** %97, align 8
  %99 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.file_lock*, %struct.file_lock** %13, align 8
  %102 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vfs_setlease(i32 %100, i32 %103, %struct.file_lock** %13, i8** null)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.file_lock*, %struct.file_lock** %13, align 8
  %106 = icmp ne %struct.file_lock* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load %struct.file_lock*, %struct.file_lock** %13, align 8
  %109 = call i32 @locks_free_lock(%struct.file_lock* %108)
  br label %110

110:                                              ; preds = %107, %95
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %149

114:                                              ; preds = %110
  %115 = call i32 @spin_lock(i32* @state_lock)
  %116 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %117 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %116, i32 0, i32 2
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %120 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %130

126:                                              ; preds = %114
  %127 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %128 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %129 = call i32 @hash_delegation_locked(%struct.nfs4_delegation* %127, %struct.nfs4_file* %128)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %132 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %131, i32 0, i32 2
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = call i32 @spin_unlock(i32* @state_lock)
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %140

138:                                              ; preds = %130
  %139 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  store %struct.nfs4_delegation* %139, %struct.nfs4_delegation** %5, align 8
  br label %162

140:                                              ; preds = %137
  %141 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %142 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %141, i32 0, i32 1
  %143 = load %struct.nfsd_file*, %struct.nfsd_file** %142, align 8
  %144 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @F_UNLCK, align 4
  %147 = bitcast %struct.nfs4_delegation** %11 to i8**
  %148 = call i32 @vfs_setlease(i32 %145, i32 %146, %struct.file_lock** null, i8** %147)
  br label %149

149:                                              ; preds = %140, %113, %94
  %150 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %151 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @put_clnt_odstate(i32 %152)
  %154 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %11, align 8
  %155 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %154, i32 0, i32 0
  %156 = call i32 @nfs4_put_stid(i32* %155)
  br label %157

157:                                              ; preds = %149, %87
  %158 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %159 = call i32 @put_deleg_file(%struct.nfs4_file* %158)
  %160 = load i32, i32* %10, align 4
  %161 = call %struct.nfs4_delegation* @ERR_PTR(i32 %160)
  store %struct.nfs4_delegation* %161, %struct.nfs4_delegation** %5, align 8
  br label %162

162:                                              ; preds = %157, %138, %74, %27, %18
  %163 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %5, align 8
  ret %struct.nfs4_delegation* %163
}

declare dso_local %struct.nfs4_delegation* @ERR_PTR(i32) #1

declare dso_local %struct.nfsd_file* @find_readable_file(%struct.nfs4_file*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nfs4_delegation_exists(%struct.nfs4_client*, %struct.nfs4_file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local %struct.nfs4_delegation* @alloc_init_deleg(%struct.nfs4_client*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_clnt_odstate*) #1

declare dso_local %struct.file_lock* @nfs4_alloc_init_lease(%struct.nfs4_delegation*, i32) #1

declare dso_local i32 @vfs_setlease(i32, i32, %struct.file_lock**, i8**) #1

declare dso_local i32 @locks_free_lock(%struct.file_lock*) #1

declare dso_local i32 @hash_delegation_locked(%struct.nfs4_delegation*, %struct.nfs4_file*) #1

declare dso_local i32 @put_clnt_odstate(i32) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

declare dso_local i32 @put_deleg_file(%struct.nfs4_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
