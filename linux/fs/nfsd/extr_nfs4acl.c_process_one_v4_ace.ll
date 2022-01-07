; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_process_one_v4_ace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_process_one_v4_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_state = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nfs4_ace = type { i32, i32, i32, i32 }

@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl_state*, %struct.nfs4_ace*)* @process_one_v4_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_v4_ace(%struct.posix_acl_state* %0, %struct.nfs4_ace* %1) #0 {
  %3 = alloca %struct.posix_acl_state*, align 8
  %4 = alloca %struct.nfs4_ace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %3, align 8
  store %struct.nfs4_ace* %1, %struct.nfs4_ace** %4, align 8
  %7 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %11 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %13 = call i32 @ace2type(%struct.nfs4_ace* %12)
  switch i32 %13, label %251 [
    i32 128, label %14
    i32 129, label %31
    i32 131, label %82
    i32 132, label %121
    i32 130, label %190
  ]

14:                                               ; preds = %2
  %15 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %22 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %21, i32 0, i32 5
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @allow_bits(%struct.TYPE_8__* %22, i32 %23)
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %27 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %26, i32 0, i32 5
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @deny_bits(%struct.TYPE_8__* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  br label %251

31:                                               ; preds = %2
  %32 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %33 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @find_uid(%struct.posix_acl_state* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %44 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @allow_bits(%struct.TYPE_8__* %51, i32 %52)
  br label %81

54:                                               ; preds = %31
  %55 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %56 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @deny_bits(%struct.TYPE_8__* %63, i32 %64)
  %66 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %67 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %78 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %77, i32 0, i32 5
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @deny_bits(%struct.TYPE_8__* %78, i32 %79)
  br label %81

81:                                               ; preds = %54, %42
  br label %251

82:                                               ; preds = %2
  %83 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %84 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %90 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %89, i32 0, i32 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @allow_bits(%struct.TYPE_8__* %90, i32 %91)
  br label %120

93:                                               ; preds = %82
  %94 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %95 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %94, i32 0, i32 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @deny_bits(%struct.TYPE_8__* %95, i32 %96)
  %98 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %99 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %5, align 4
  %102 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %103 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %102, i32 0, i32 5
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @deny_bits(%struct.TYPE_8__* %103, i32 %104)
  %106 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %107 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %106, i32 0, i32 2
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @deny_bits(%struct.TYPE_8__* %107, i32 %108)
  %110 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %111 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @deny_bits_array(%struct.TYPE_7__* %112, i32 %113)
  %115 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %116 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @deny_bits_array(%struct.TYPE_7__* %117, i32 %118)
  br label %120

120:                                              ; preds = %93, %88
  br label %251

121:                                              ; preds = %2
  %122 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %123 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %124 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @find_gid(%struct.posix_acl_state* %122, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %128 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %121
  %133 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %134 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @allow_bits(%struct.TYPE_8__* %141, i32 %142)
  br label %189

144:                                              ; preds = %121
  %145 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %146 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @deny_bits(%struct.TYPE_8__* %153, i32 %154)
  %156 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %157 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %5, align 4
  %167 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %168 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %167, i32 0, i32 5
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @deny_bits(%struct.TYPE_8__* %168, i32 %169)
  %171 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %172 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %171, i32 0, i32 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @deny_bits(%struct.TYPE_8__* %172, i32 %173)
  %175 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %176 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %175, i32 0, i32 2
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @deny_bits(%struct.TYPE_8__* %176, i32 %177)
  %179 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %180 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @deny_bits_array(%struct.TYPE_7__* %181, i32 %182)
  %184 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %185 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @deny_bits_array(%struct.TYPE_7__* %186, i32 %187)
  br label %189

189:                                              ; preds = %144, %132
  br label %251

190:                                              ; preds = %2
  %191 = load %struct.nfs4_ace*, %struct.nfs4_ace** %4, align 8
  %192 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %198 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %197, i32 0, i32 5
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @allow_bits(%struct.TYPE_8__* %198, i32 %199)
  %201 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %202 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %201, i32 0, i32 4
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @allow_bits(%struct.TYPE_8__* %202, i32 %203)
  %205 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %206 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %205, i32 0, i32 3
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @allow_bits(%struct.TYPE_8__* %206, i32 %207)
  %209 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %210 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %209, i32 0, i32 2
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @allow_bits(%struct.TYPE_8__* %210, i32 %211)
  %213 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %214 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %213, i32 0, i32 1
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @allow_bits_array(%struct.TYPE_7__* %215, i32 %216)
  %218 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %219 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @allow_bits_array(%struct.TYPE_7__* %220, i32 %221)
  br label %250

223:                                              ; preds = %190
  %224 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %225 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %224, i32 0, i32 5
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @deny_bits(%struct.TYPE_8__* %225, i32 %226)
  %228 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %229 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %228, i32 0, i32 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @deny_bits(%struct.TYPE_8__* %229, i32 %230)
  %232 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %233 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %232, i32 0, i32 3
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @deny_bits(%struct.TYPE_8__* %233, i32 %234)
  %236 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %237 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %236, i32 0, i32 2
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @deny_bits(%struct.TYPE_8__* %237, i32 %238)
  %240 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %241 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %240, i32 0, i32 1
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @deny_bits_array(%struct.TYPE_7__* %242, i32 %243)
  %245 = load %struct.posix_acl_state*, %struct.posix_acl_state** %3, align 8
  %246 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %245, i32 0, i32 0
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @deny_bits_array(%struct.TYPE_7__* %247, i32 %248)
  br label %250

250:                                              ; preds = %223, %196
  br label %251

251:                                              ; preds = %250, %2, %189, %120, %81, %30
  ret void
}

declare dso_local i32 @ace2type(%struct.nfs4_ace*) #1

declare dso_local i32 @allow_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @deny_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @find_uid(%struct.posix_acl_state*, i32) #1

declare dso_local i32 @deny_bits_array(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @find_gid(%struct.posix_acl_state*, i32) #1

declare dso_local i32 @allow_bits_array(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
