; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_create }
%struct.nfsd4_create = type { i32, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.svc_fh = type { i32 }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@nfsd_attrmask = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@nfserr_inval = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@nfserr_badtype = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_create(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_create*, align 8
  %9 = alloca %struct.svc_fh, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %12 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %13 = bitcast %union.nfsd4_op_u* %12 to %struct.nfsd4_create*
  store %struct.nfsd4_create* %13, %struct.nfsd4_create** %8, align 8
  %14 = load i32, i32* @NFS4_FHSIZE, align 4
  %15 = call i32 @fh_init(%struct.svc_fh* %9, i32 %14)
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 0
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = load i32, i32* @NFSD_MAY_NOP, align 4
  %21 = call i64 @fh_verify(%struct.svc_rqst* %16, i32* %18, i32 %19, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %4, align 8
  br label %241

26:                                               ; preds = %3
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %29 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %30 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @nfsd_attrmask, align 4
  %33 = call i64 @check_attr_support(%struct.svc_rqst* %27, %struct.nfsd4_compound_state* %28, i32 %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %4, align 8
  br label %241

38:                                               ; preds = %26
  %39 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %40 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %47 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %188 [
    i32 129, label %49
    i32 133, label %63
    i32 132, label %101
    i32 128, label %139
    i32 130, label %153
    i32 131, label %167
  ]

49:                                               ; preds = %38
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %51 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %52 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %51, i32 0, i32 0
  %53 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %54 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %57 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %60 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nfsd_symlink(%struct.svc_rqst* %50, i32* %52, i32 %55, i32 %58, i32 %61, %struct.svc_fh* %9)
  store i64 %62, i64* %10, align 8
  br label %190

63:                                               ; preds = %38
  %64 = load i64, i64* @nfserr_inval, align 8
  store i64 %64, i64* %10, align 8
  %65 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %66 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %69 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MKDEV(i32 %67, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @MAJOR(i32 %72)
  %74 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %75 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @MINOR(i32 %79)
  %81 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %82 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78, %63
  br label %235

86:                                               ; preds = %78
  %87 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %88 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %89 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %88, i32 0, i32 0
  %90 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %91 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %94 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %97 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %96, i32 0, i32 5
  %98 = load i32, i32* @S_IFBLK, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @nfsd_create(%struct.svc_rqst* %87, i32* %89, i32 %92, i32 %95, %struct.TYPE_6__* %97, i32 %98, i32 %99, %struct.svc_fh* %9)
  store i64 %100, i64* %10, align 8
  br label %190

101:                                              ; preds = %38
  %102 = load i64, i64* @nfserr_inval, align 8
  store i64 %102, i64* %10, align 8
  %103 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %104 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %107 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @MKDEV(i32 %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @MAJOR(i32 %110)
  %112 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %113 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @MINOR(i32 %117)
  %119 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %120 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116, %101
  br label %235

124:                                              ; preds = %116
  %125 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %126 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %127 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %126, i32 0, i32 0
  %128 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %129 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %132 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %135 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %134, i32 0, i32 5
  %136 = load i32, i32* @S_IFCHR, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @nfsd_create(%struct.svc_rqst* %125, i32* %127, i32 %130, i32 %133, %struct.TYPE_6__* %135, i32 %136, i32 %137, %struct.svc_fh* %9)
  store i64 %138, i64* %10, align 8
  br label %190

139:                                              ; preds = %38
  %140 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %141 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %142 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %141, i32 0, i32 0
  %143 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %144 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %147 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %150 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %149, i32 0, i32 5
  %151 = load i32, i32* @S_IFSOCK, align 4
  %152 = call i64 @nfsd_create(%struct.svc_rqst* %140, i32* %142, i32 %145, i32 %148, %struct.TYPE_6__* %150, i32 %151, i32 0, %struct.svc_fh* %9)
  store i64 %152, i64* %10, align 8
  br label %190

153:                                              ; preds = %38
  %154 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %155 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %156 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %155, i32 0, i32 0
  %157 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %158 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %161 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %164 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %163, i32 0, i32 5
  %165 = load i32, i32* @S_IFIFO, align 4
  %166 = call i64 @nfsd_create(%struct.svc_rqst* %154, i32* %156, i32 %159, i32 %162, %struct.TYPE_6__* %164, i32 %165, i32 0, %struct.svc_fh* %9)
  store i64 %166, i64* %10, align 8
  br label %190

167:                                              ; preds = %38
  %168 = load i32, i32* @ATTR_SIZE, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %171 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %169
  store i32 %174, i32* %172, align 8
  %175 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %176 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %177 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %176, i32 0, i32 0
  %178 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %179 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %182 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %185 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %184, i32 0, i32 5
  %186 = load i32, i32* @S_IFDIR, align 4
  %187 = call i64 @nfsd_create(%struct.svc_rqst* %175, i32* %177, i32 %180, i32 %183, %struct.TYPE_6__* %185, i32 %186, i32 0, %struct.svc_fh* %9)
  store i64 %187, i64* %10, align 8
  br label %190

188:                                              ; preds = %38
  %189 = load i64, i64* @nfserr_badtype, align 8
  store i64 %189, i64* %10, align 8
  br label %190

190:                                              ; preds = %188, %167, %153, %139, %124, %86, %49
  %191 = load i64, i64* %10, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %233

194:                                              ; preds = %190
  %195 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %196 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %202 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %201, i32 0, i32 4
  %203 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %204 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @nfsd4_security_inode_setsecctx(%struct.svc_fh* %9, %struct.TYPE_7__* %202, i32 %205)
  br label %207

207:                                              ; preds = %200, %194
  %208 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %209 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %214 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %215 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %218 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @do_set_nfs4_acl(%struct.svc_rqst* %213, %struct.svc_fh* %9, i32* %216, i32 %219)
  br label %221

221:                                              ; preds = %212, %207
  %222 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %223 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %222, i32 0, i32 0
  %224 = call i32 @fh_unlock(i32* %223)
  %225 = load %struct.nfsd4_create*, %struct.nfsd4_create** %8, align 8
  %226 = getelementptr inbounds %struct.nfsd4_create, %struct.nfsd4_create* %225, i32 0, i32 1
  %227 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %228 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %227, i32 0, i32 0
  %229 = call i32 @set_change_info(i32* %226, i32* %228)
  %230 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %231 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %230, i32 0, i32 0
  %232 = call i32 @fh_dup2(i32* %231, %struct.svc_fh* %9)
  br label %233

233:                                              ; preds = %221, %193
  %234 = call i32 @fh_put(%struct.svc_fh* %9)
  br label %235

235:                                              ; preds = %233, %123, %85
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = load i64, i64* %10, align 8
  store i64 %240, i64* %4, align 8
  br label %241

241:                                              ; preds = %235, %36, %24
  %242 = load i64, i64* %4, align 8
  ret i64 %242
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32, i32) #1

declare dso_local i64 @nfsd_symlink(%struct.svc_rqst*, i32*, i32, i32, i32, %struct.svc_fh*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @nfsd_create(%struct.svc_rqst*, i32*, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.svc_fh*) #1

declare dso_local i32 @nfsd4_security_inode_setsecctx(%struct.svc_fh*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @do_set_nfs4_acl(%struct.svc_rqst*, %struct.svc_fh*, i32*, i32) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

declare dso_local i32 @fh_dup2(i32*, %struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
