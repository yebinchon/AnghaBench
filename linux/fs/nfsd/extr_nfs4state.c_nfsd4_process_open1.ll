; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_process_open1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_process_open1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.TYPE_4__, %struct.nfs4_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_client = type { i32 }
%struct.nfsd4_open = type { i32, i32, %struct.nfs4_openowner*, i32, i32, i32*, i32 }
%struct.nfs4_openowner = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfserr_stale_clientid = common dso_local global i64 0, align 8
@nfserr_jukebox = common dso_local global i64 0, align 8
@NFS4_OO_CONFIRMED = common dso_local global i32 0, align 4
@NFSEXP_PNFS = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_process_open1(%struct.nfsd4_compound_state* %0, %struct.nfsd4_open* %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.nfsd_net*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nfs4_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_openowner*, align 8
  %12 = alloca i64, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %6, align 8
  store %struct.nfsd_net* %2, %struct.nfsd_net** %7, align 8
  %13 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %13, i32 0, i32 6
  store i32* %14, i32** %8, align 8
  store %struct.nfs4_client* null, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_openowner* null, %struct.nfs4_openowner** %11, align 8
  %15 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %15, i32 0, i32 6
  %17 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %18 = call i64 @STALE_CLIENTID(i32* %16, %struct.nfsd_net* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %21, i64* %4, align 8
  br label %135

22:                                               ; preds = %3
  %23 = call i32* (...) @nfsd4_alloc_file()
  %24 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %31, i64* %4, align 8
  br label %135

32:                                               ; preds = %22
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %36 = call i64 @lookup_clientid(i32* %33, %struct.nfsd4_compound_state* %34, %struct.nfsd_net* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %4, align 8
  br label %135

41:                                               ; preds = %32
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %42, i32 0, i32 1
  %44 = load %struct.nfs4_client*, %struct.nfs4_client** %43, align 8
  store %struct.nfs4_client* %44, %struct.nfs4_client** %9, align 8
  %45 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %46 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %45, i32 0, i32 4
  %47 = call i32 @ownerstr_hashval(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %50 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %51 = call %struct.nfs4_openowner* @find_openstateowner_str(i32 %48, %struct.nfsd4_open* %49, %struct.nfs4_client* %50)
  store %struct.nfs4_openowner* %51, %struct.nfs4_openowner** %11, align 8
  %52 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %53 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %54 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %53, i32 0, i32 2
  store %struct.nfs4_openowner* %52, %struct.nfs4_openowner** %54, align 8
  %55 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %56 = icmp ne %struct.nfs4_openowner* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %41
  br label %83

58:                                               ; preds = %41
  %59 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %60 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NFS4_OO_CONFIRMED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %67 = call i32 @release_openowner(%struct.nfs4_openowner* %66)
  %68 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %69 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %68, i32 0, i32 2
  store %struct.nfs4_openowner* null, %struct.nfs4_openowner** %69, align 8
  br label %83

70:                                               ; preds = %58
  %71 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %72 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %73 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %72, i32 0, i32 1
  %74 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %75 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nfsd4_check_seqid(%struct.nfsd4_compound_state* %71, i32* %73, i32 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %4, align 8
  br label %135

82:                                               ; preds = %70
  br label %96

83:                                               ; preds = %65, %57
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %86 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %87 = call %struct.nfs4_openowner* @alloc_init_open_stateowner(i32 %84, %struct.nfsd4_open* %85, %struct.nfsd4_compound_state* %86)
  store %struct.nfs4_openowner* %87, %struct.nfs4_openowner** %11, align 8
  %88 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %89 = icmp eq %struct.nfs4_openowner* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %91, i64* %4, align 8
  br label %135

92:                                               ; preds = %83
  %93 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %11, align 8
  %94 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %95 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %94, i32 0, i32 2
  store %struct.nfs4_openowner* %93, %struct.nfs4_openowner** %95, align 8
  br label %96

96:                                               ; preds = %92, %82
  %97 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %98 = call i32 @nfs4_alloc_open_stateid(%struct.nfs4_client* %97)
  %99 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %100 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %102 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %106, i64* %4, align 8
  br label %135

107:                                              ; preds = %96
  %108 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %109 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %113 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NFSEXP_PNFS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %111
  %122 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %123 = call i32 @alloc_clnt_odstate(%struct.nfs4_client* %122)
  %124 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %125 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %127 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %121
  %131 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %131, i64* %4, align 8
  br label %135

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %111, %107
  %134 = load i64, i64* @nfs_ok, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %130, %105, %90, %80, %39, %30, %20
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i64 @STALE_CLIENTID(i32*, %struct.nfsd_net*) #1

declare dso_local i32* @nfsd4_alloc_file(...) #1

declare dso_local i64 @lookup_clientid(i32*, %struct.nfsd4_compound_state*, %struct.nfsd_net*) #1

declare dso_local i32 @ownerstr_hashval(i32*) #1

declare dso_local %struct.nfs4_openowner* @find_openstateowner_str(i32, %struct.nfsd4_open*, %struct.nfs4_client*) #1

declare dso_local i32 @release_openowner(%struct.nfs4_openowner*) #1

declare dso_local i64 @nfsd4_check_seqid(%struct.nfsd4_compound_state*, i32*, i32) #1

declare dso_local %struct.nfs4_openowner* @alloc_init_open_stateowner(i32, %struct.nfsd4_open*, %struct.nfsd4_compound_state*) #1

declare dso_local i32 @nfs4_alloc_open_stateid(%struct.nfs4_client*) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @alloc_clnt_odstate(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
