; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_clone_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_clone_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFS4_MAXNAMLEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs_clone_server(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs_fattr*, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call %struct.nfs_server* (...) @nfs_alloc_server()
  store %struct.nfs_server* %13, %struct.nfs_server** %10, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %15 = icmp ne %struct.nfs_server* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.nfs_server* @ERR_PTR(i32 %18)
  store %struct.nfs_server* %19, %struct.nfs_server** %5, align 8
  br label %113

20:                                               ; preds = %4
  %21 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_cred(i32 %23)
  %25 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  %29 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %29, %struct.nfs_fattr** %11, align 8
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %31 = icmp eq %struct.nfs_fattr* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %106

33:                                               ; preds = %20
  %34 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 4
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %43 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %45 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @refcount_inc(i32* %47)
  %49 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %50 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %51 = call i32 @nfs_server_copy_userdata(%struct.nfs_server* %49, %struct.nfs_server* %50)
  %52 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %53 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %56 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %58 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %59 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nfs_init_server_rpcclient(%struct.nfs_server* %57, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %33
  br label %106

68:                                               ; preds = %33
  %69 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %70 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %71 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %72 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %69, %struct.nfs_fh* %70, %struct.nfs_fattr* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %106

76:                                               ; preds = %68
  %77 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %78 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %76
  %88 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %89 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %90 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %93 = call i32 @nfs_start_lockd(%struct.nfs_server* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %106

97:                                               ; preds = %91
  %98 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %99 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %98)
  %100 = load i32, i32* @jiffies, align 4
  %101 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %102 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %104 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %103)
  %105 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  store %struct.nfs_server* %105, %struct.nfs_server** %5, align 8
  br label %113

106:                                              ; preds = %96, %75, %67, %32
  %107 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %108 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %107)
  %109 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %110 = call i32 @nfs_free_server(%struct.nfs_server* %109)
  %111 = load i32, i32* %12, align 4
  %112 = call %struct.nfs_server* @ERR_PTR(i32 %111)
  store %struct.nfs_server* %112, %struct.nfs_server** %5, align 8
  br label %113

113:                                              ; preds = %106, %97, %16
  %114 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  ret %struct.nfs_server* %114
}

declare dso_local %struct.nfs_server* @nfs_alloc_server(...) #1

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nfs_server_copy_userdata(%struct.nfs_server*, %struct.nfs_server*) #1

declare dso_local i32 @nfs_init_server_rpcclient(%struct.nfs_server*, i32, i32) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_start_lockd(%struct.nfs_server*) #1

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
