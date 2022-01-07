; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtInsert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.btstack = type { i32 }
%struct.xtsplit = type { i32, i32, i32*, i64, i64, i64, %struct.metapage* }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"xtInsert: nxoff:0x%lx nxlen:0x%x\00", align 1
@XT_INSERT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtInsert(i32 %0, %struct.inode* %1, i32 %2, i64 %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.metapage*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.btstack, align 4
  %25 = alloca %struct.xtsplit, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.tlock*, align 8
  %30 = alloca %struct.xtlock*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = load i64, i64* %12, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @XT_INSERT, align 4
  %38 = call i32 @xtSearch(%struct.inode* %35, i64 %36, i64* %28, i32* %27, %struct.btstack* %24, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %7
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %8, align 4
  br label %255

42:                                               ; preds = %7
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.btstack, %struct.btstack* %24, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %21, align 8
  %47 = load %struct.metapage*, %struct.metapage** %19, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %49 = load i32, i32* %22, align 4
  %50 = call i32 @XT_GETSEARCH(%struct.inode* %43, i32 %45, i64 %46, %struct.metapage* %47, %struct.TYPE_7__* %48, i32 %49)
  %51 = load i32, i32* %27, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %28, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %28, align 8
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 %58, %59
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %42
  %63 = load i32, i32* @EEXIST, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %251

65:                                               ; preds = %56, %53
  %66 = load i64*, i64** %14, align 8
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %17, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %65
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* @XTENTRYSTART, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32* %80, i32** %26, align 8
  %81 = load i32*, i32** %26, align 8
  %82 = call i64 @addressXAD(i32* %81)
  %83 = load i32*, i32** %26, align 8
  %84 = call i64 @lengthXAD(i32* %83)
  %85 = add nsw i64 %82, %84
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %18, align 8
  br label %88

87:                                               ; preds = %69
  store i64 0, i64* %18, align 8
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @dquot_alloc_block(%struct.inode* %89, i64 %90)
  store i32 %91, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %251

94:                                               ; preds = %88
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @dbAlloc(%struct.inode* %95, i64 %96, i64 %97, i64* %17)
  store i32 %98, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @dquot_free_block(%struct.inode* %101, i64 %102)
  br label %251

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %65
  %106 = load i32, i32* @XAD_NEW, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @le16_to_cpu(i32 %112)
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = icmp eq i32 %114, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %105
  %122 = load %struct.metapage*, %struct.metapage** %19, align 8
  %123 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 6
  store %struct.metapage* %122, %struct.metapage** %123, align 8
  %124 = load i32, i32* %22, align 4
  %125 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 5
  store i64 %128, i64* %129, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 4
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %17, align 8
  %133 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 3
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %25, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = call i32 @xtSplitUp(i32 %135, %struct.inode* %136, %struct.xtsplit* %25, %struct.btstack* %24)
  store i32 %137, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %121
  %140 = load i64*, i64** %14, align 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.inode*, %struct.inode** %10, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @dbFree(%struct.inode* %144, i64 %145, i64 %146)
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @dquot_free_block(%struct.inode* %148, i64 %149)
  br label %151

151:                                              ; preds = %143, %139
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %8, align 4
  br label %255

153:                                              ; preds = %121
  %154 = load i64, i64* %17, align 8
  %155 = load i64*, i64** %14, align 8
  store i64 %154, i64* %155, align 8
  store i32 0, i32* %8, align 4
  br label %255

156:                                              ; preds = %105
  %157 = load %struct.metapage*, %struct.metapage** %19, align 8
  %158 = load %struct.inode*, %struct.inode** %10, align 8
  %159 = call i32 @BT_MARK_DIRTY(%struct.metapage* %157, %struct.inode* %158)
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %156
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memmove(i32* %170, i32* %176, i32 %182)
  br label %184

184:                                              ; preds = %163, %156
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32* %190, i32** %26, align 8
  %191 = load i32*, i32** %26, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %17, align 8
  %196 = call i32 @XT_PUTENTRY(i32* %191, i32 %192, i64 %193, i64 %194, i64 %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = call i32 @le16_add_cpu(i32* %199, i32 1)
  %201 = load i32, i32* @COMMIT_Nolink, align 4
  %202 = load %struct.inode*, %struct.inode** %10, align 8
  %203 = call i32 @test_cflag(i32 %201, %struct.inode* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %248, label %205

205:                                              ; preds = %184
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = load %struct.metapage*, %struct.metapage** %19, align 8
  %209 = load i32, i32* @tlckXTREE, align 4
  %210 = load i32, i32* @tlckGROW, align 4
  %211 = or i32 %209, %210
  %212 = call %struct.tlock* @txLock(i32 %206, %struct.inode* %207, %struct.metapage* %208, i32 %211)
  store %struct.tlock* %212, %struct.tlock** %29, align 8
  %213 = load %struct.tlock*, %struct.tlock** %29, align 8
  %214 = getelementptr inbounds %struct.tlock, %struct.tlock* %213, i32 0, i32 0
  %215 = bitcast i32* %214 to %struct.xtlock*
  store %struct.xtlock* %215, %struct.xtlock** %30, align 8
  %216 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %217 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %205
  %222 = load i32, i32* %22, align 4
  %223 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %224 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @min(i32 %222, i32 %226)
  br label %230

228:                                              ; preds = %205
  %229 = load i32, i32* %22, align 4
  br label %230

230:                                              ; preds = %228, %221
  %231 = phi i32 [ %227, %221 ], [ %229, %228 ]
  %232 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %233 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @le16_to_cpu(i32 %238)
  %240 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %241 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %239, %243
  %245 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %246 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  store i32 %244, i32* %247, align 4
  br label %248

248:                                              ; preds = %230, %184
  %249 = load i64, i64* %17, align 8
  %250 = load i64*, i64** %14, align 8
  store i64 %249, i64* %250, align 8
  br label %251

251:                                              ; preds = %248, %100, %93, %62
  %252 = load %struct.metapage*, %struct.metapage** %19, align 8
  %253 = call i32 @XT_PUTPAGE(%struct.metapage* %252)
  %254 = load i32, i32* %16, align 4
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %251, %153, %151, %40
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local i32 @jfs_info(i8*, i32, i64) #1

declare dso_local i32 @xtSearch(%struct.inode*, i64, i64*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @XT_GETSEARCH(%struct.inode*, i32, i64, %struct.metapage*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @addressXAD(i32*) #1

declare dso_local i64 @lengthXAD(i32*) #1

declare dso_local i32 @dquot_alloc_block(%struct.inode*, i64) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i64, i64, i64*) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @xtSplitUp(i32, %struct.inode*, %struct.xtsplit*, %struct.btstack*) #1

declare dso_local i32 @dbFree(%struct.inode*, i64, i64) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
