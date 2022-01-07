; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_do_open_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_do_open_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.svc_fh }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32*, i64, i32, i32, i32*, %struct.TYPE_8__, i32, %struct.TYPE_9__, i32, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i64 0, align 8
@NFS4_FHSIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_DELEGATE_CUR = common dso_local global i64 0, align 8
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*, %struct.svc_fh**)* @do_open_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_open_lookup(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_open* %2, %struct.svc_fh** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca %struct.nfsd4_open*, align 8
  %9 = alloca %struct.svc_fh**, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %7, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %8, align 8
  store %struct.svc_fh** %3, %struct.svc_fh*** %9, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  store %struct.svc_fh* %14, %struct.svc_fh** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.svc_fh* @kmalloc(i32 4, i32 %15)
  %17 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  store %struct.svc_fh* %16, %struct.svc_fh** %17, align 8
  %18 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %18, align 8
  %20 = icmp ne %struct.svc_fh* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %22, i64* %5, align 8
  br label %189

23:                                               ; preds = %4
  %24 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %25 = load %struct.svc_fh*, %struct.svc_fh** %24, align 8
  %26 = load i32, i32* @NFS4_FHSIZE, align 4
  %27 = call i32 @fh_init(%struct.svc_fh* %25, i32 %26)
  %28 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %29 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %28, i32 0, i32 8
  store i32 0, i32* %29, align 8
  %30 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %31 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %23
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %43 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %44 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %45 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %49 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %53 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %52, i32 0, i32 10
  %54 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %55 = load %struct.svc_fh*, %struct.svc_fh** %54, align 8
  %56 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %57 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %60 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %65 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %64, i32 0, i32 8
  %66 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %67 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %66, i32 0, i32 3
  %68 = call i64 @do_nfsd_create(%struct.svc_rqst* %42, %struct.svc_fh* %43, i32 %47, i32 %51, i32* %53, %struct.svc_fh* %55, i32 %58, i32* %63, i32* %65, i32* %67)
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %34
  %76 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %77 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %83 = load %struct.svc_fh*, %struct.svc_fh** %82, align 8
  %84 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %85 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %84, i32 0, i32 7
  %86 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %87 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @nfsd4_security_inode_setsecctx(%struct.svc_fh* %83, %struct.TYPE_9__* %85, i32* %88)
  br label %90

90:                                               ; preds = %81, %75, %34
  %91 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %92 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @nfsd_create_is_exclusive(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i64, i64* %12, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %101 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %104 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %99, %96, %90
  br label %124

110:                                              ; preds = %23
  %111 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %112 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %113 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %114 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %118 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %122 = load %struct.svc_fh*, %struct.svc_fh** %121, align 8
  %123 = call i64 @nfsd_lookup(%struct.svc_rqst* %111, %struct.svc_fh* %112, i32 %116, i32 %120, %struct.svc_fh* %122)
  store i64 %123, i64* %12, align 8
  br label %124

124:                                              ; preds = %110, %109
  %125 = load i64, i64* %12, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %187

128:                                              ; preds = %124
  %129 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %130 = load %struct.svc_fh*, %struct.svc_fh** %129, align 8
  %131 = call i64 @nfsd_check_obj_isreg(%struct.svc_fh* %130)
  store i64 %131, i64* %12, align 8
  %132 = load i64, i64* %12, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %187

135:                                              ; preds = %128
  %136 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %137 = call i64 @is_create_with_attrs(%struct.nfsd4_open* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %141 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %146 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %147 = load %struct.svc_fh*, %struct.svc_fh** %146, align 8
  %148 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %149 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %152 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @do_set_nfs4_acl(%struct.svc_rqst* %145, %struct.svc_fh* %147, i32* %150, i32* %153)
  br label %155

155:                                              ; preds = %144, %139, %135
  %156 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %157 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %158 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %159 = load %struct.svc_fh*, %struct.svc_fh** %158, align 8
  %160 = call i32 @nfsd4_set_open_owner_reply_cache(%struct.nfsd4_compound_state* %156, %struct.nfsd4_open* %157, %struct.svc_fh* %159)
  %161 = load i32, i32* @NFSD_MAY_NOP, align 4
  store i32 %161, i32* %11, align 4
  %162 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %163 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %155
  %167 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %168 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NFS4_OPEN_CLAIM_DELEGATE_CUR, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166, %155
  %173 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %166
  %177 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %178 = load %struct.svc_fh**, %struct.svc_fh*** %9, align 8
  %179 = load %struct.svc_fh*, %struct.svc_fh** %178, align 8
  %180 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @do_open_permission(%struct.svc_rqst* %177, %struct.svc_fh* %179, %struct.nfsd4_open* %180, i32 %181)
  store i64 %182, i64* %12, align 8
  %183 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %184 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %183, i32 0, i32 2
  %185 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %186 = call i32 @set_change_info(i32* %184, %struct.svc_fh* %185)
  br label %187

187:                                              ; preds = %176, %134, %127
  %188 = load i64, i64* %12, align 8
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %187, %21
  %190 = load i64, i64* %5, align 8
  ret i64 %190
}

declare dso_local %struct.svc_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @do_nfsd_create(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32*, %struct.svc_fh*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @nfsd4_security_inode_setsecctx(%struct.svc_fh*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @nfsd_create_is_exclusive(i32) #1

declare dso_local i64 @nfsd_lookup(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.svc_fh*) #1

declare dso_local i64 @nfsd_check_obj_isreg(%struct.svc_fh*) #1

declare dso_local i64 @is_create_with_attrs(%struct.nfsd4_open*) #1

declare dso_local i32 @do_set_nfs4_acl(%struct.svc_rqst*, %struct.svc_fh*, i32*, i32*) #1

declare dso_local i32 @nfsd4_set_open_owner_reply_cache(%struct.nfsd4_compound_state*, %struct.nfsd4_open*, %struct.svc_fh*) #1

declare dso_local i64 @do_open_permission(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*, i32) #1

declare dso_local i32 @set_change_info(i32*, %struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
